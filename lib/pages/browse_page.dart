import 'package:flutter/material.dart';
import 'package:secondly/pages/home_page.dart';
import 'package:secondly/models/connection.dart';
import 'package:secondly/configs/constants.dart';

class BrowsePage extends StatefulWidget {
  const BrowsePage({required Key key}) : super(key: key);

  @override
  State<BrowsePage> createState() => _BrowsePageState();
}

class _BrowsePageState extends State<BrowsePage> {
  String searchQuery = '';
  String dropdownValue = 'keep same';
  @override
  void initState() {
    super.initState();
    getBroseCards();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Browse Cards'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
            );
          },
        ),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (value) {
                setState(() {
                  searchQuery = value;
                });
                // Perform the search operation
              },
              decoration: const InputDecoration(
                labelText: "Search",
                hintText: "Search",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                ),
              ),
            ),
          ),
          Expanded(
            child: FutureBuilder(
              future: getBroseCards(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                } else if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else {
                  var filteredData = <List<String>>[];
                  for (var i = 0; i < snapshot.data![0].length; i++) {
                    if (snapshot.data![0][i].contains(searchQuery) ||
                        snapshot.data![1][i].contains(searchQuery) ||
                        snapshot.data![2][i].contains(searchQuery)) {
                      filteredData.add([
                        snapshot.data![0][i],
                        snapshot.data![1][i],
                        snapshot.data![2][i]
                      ]);
                    }
                  }
                  var widgets = <Widget>[];
                  for (var index = 0; index < (filteredData.length); index++) {
                    var filteredQuestion =
                        filteredData.isNotEmpty ? filteredData[index][0] : '';
                    var filteredDeck = filteredData[index][1];
                    var filteredAnswer = filteredData[index][2];
                    widgets.add(
                      GestureDetector(
                        onTap: () {
                          TextEditingController controller1 =
                              TextEditingController(text: filteredQuestion);
                          TextEditingController controller2 =
                              TextEditingController(text: filteredAnswer);
                          TextEditingController controller3 =
                              TextEditingController(text: filteredDeck);
                          showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context) {
                              return Container(
                                color: kbutton,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: <Widget>[
                                      DropdownButton<String>(
                                        value: dropdownValue,
                                        onChanged: (String? newValue) {
                                          setState(() {
                                            dropdownValue = newValue!;
                                          });
                                        },
                                        items: <String>[
                                          'keep same',
                                          'Computing',
                                          'English',
                                          'Geography',
                                          'History',
                                          'Maths',
                                          'Science'
                                        ].map<DropdownMenuItem<String>>(
                                            (String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: SizedBox(
                                              width: 200,
                                              child: Text(value),
                                            ),
                                          );
                                        }).toList(),
                                      ),
                                      TextField(
                                        controller: controller1,
                                        decoration: const InputDecoration(
                                          labelText:
                                              'Enter new value for question or leave blank to keep the same',
                                        ),
                                      ),
                                      TextField(
                                        controller: controller2,
                                        decoration: const InputDecoration(
                                          labelText:
                                              'Enter new value for answer or leave blank to keep the same',
                                        ),
                                      ),
                                      ElevatedButton(
                                        child: const Text('Apply'),
                                        onPressed: () {
                                          // Handle the apply button press
                                          if (controller1.text.isNotEmpty) {
                                            filteredQuestion = controller1.text;
                                          }
                                          if (controller2.text.isNotEmpty) {
                                            filteredAnswer = controller2.text;
                                          }
                                          if (dropdownValue != 'keep same') {
                                            filteredDeck = dropdownValue;
                                          }
                                          Navigator.pop(context);
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        child: Column(
                          children: <Widget>[
                            Text('Question: $filteredQuestion'),
                            Text('Answer: $filteredAnswer'),
                            Text('Deck: $filteredDeck'),
                            const Divider(color: Colors.black),
                          ],
                        ),
                      ),
                    );
                  }
                  return ListView(children: widgets);
                }
              },
            ),
          )
        ],
      ),
    );
  }
}

Future<List<List<String>>> getBroseCards() async {
  final results = await neonClient
      .select(table: "cards", columns: ["question", "deck_id", "answer"]);
  List<String> questions = results.map((row) => row[0].toString()).toList();
  List<String> decks = results.map((row) => row[1].toString()).toList();
  List<String> answers = results.map((row) => row[2].toString()).toList();
  for (var i = 0; i < questions.length; i++) {
    if (decks[i] == '1') {
      decks[i] = 'Computing';
    }

    if (decks[i] == '2') {
      decks[i] = 'English';
    }

    if (decks[i] == '3') {
      decks[i] = 'Geography';
    }

    if (decks[i] == '4') {
      decks[i] = 'History';
    }

    if (decks[i] == '5') {
      decks[i] = 'Maths';
    }

    if (decks[i] == '6') {
      decks[i] = 'Science';
    }
  }
  return [questions, decks, answers];
}
