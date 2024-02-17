import 'package:flutter/material.dart';
import 'package:secondly/pages/home_page.dart';
import 'package:secondly/models/connection.dart';
import 'package:secondly/configs/constants.dart';
import 'package:secondly/pages/login_page.dart';

class BrowsePage extends StatefulWidget {
  const BrowsePage({required Key key}) : super(key: key);

  @override
  State<BrowsePage> createState() => _BrowsePageState();
}

class _BrowsePageState extends State<BrowsePage> {
  String searchQuery = '';
  String dropdownValue = 'Computing';
  final controller1 = TextEditingController();
  final controller2 = TextEditingController();
  @override
  void initState() {
    super.initState();
    getBrowseCards();
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
              future: getBrowseCards(),
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
                    dynamic filteredQuestion =
                        filteredData.isNotEmpty ? filteredData[index][0] : '';
                    dynamic filteredDeck = filteredData[index][1];
                    dynamic filteredAnswer = filteredData[index][2];
                    widgets.add(
                      GestureDetector(
                        onTap: () {
                          TextEditingController controller1 =
                              TextEditingController(text: filteredQuestion);
                          TextEditingController controller2 =
                              TextEditingController(text: filteredAnswer);
                          dropdownValue = filteredDeck;
                          showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context) {
                              return Container(
                                color: kbutton,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: DefaultTextStyle(
                                    style: const TextStyle(
                                      color: Colors.white,
                                    ),
                                    child: SingleChildScrollView(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: <Widget>[
                                          Row(
                                            children: <Widget>[
                                              const Text('Deck:'),
                                              const Spacer(),
                                              ButtonTheme(
                                                alignedDropdown: true,
                                                child: DropdownButton<String>(
                                                  value: dropdownValue,
                                                  onChanged:
                                                      (String? newValue) {
                                                    setState(() {
                                                      dropdownValue = newValue!;
                                                    });
                                                  },
                                                  items: <String>[
                                                    'Computing',
                                                    'English',
                                                    'Geography',
                                                    'History',
                                                    'Maths',
                                                    'Science'
                                                  ].map<
                                                          DropdownMenuItem<
                                                              String>>(
                                                      (String value) {
                                                    return DropdownMenuItem<
                                                        String>(
                                                      value: value,
                                                      child: SizedBox(
                                                        width: 200,
                                                        child: Text(value),
                                                      ),
                                                    );
                                                  }).toList(),
                                                ),
                                              ),
                                            ],
                                          ),
                                          TextField(
                                            controller: controller1,
                                            decoration: const InputDecoration(
                                              labelText:
                                                  'Enter updated question field',
                                            ),
                                          ),
                                          TextField(
                                            controller: controller2,
                                            decoration: const InputDecoration(
                                              labelText:
                                                  'Enter updated answer field',
                                            ),
                                          ),
                                          ElevatedButton(
                                            child: const Text('Apply'),
                                            onPressed: () {
                                              final questionText =
                                                  controller1.text;
                                              final answerText =
                                                  controller2.text;
                                              if (questionText.isEmpty ||
                                                  answerText.isEmpty) {
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(
                                                  const SnackBar(
                                                      content: Text(
                                                          'Please enter both question and answer')),
                                                );
                                              } else {
                                                dynamic tempQuestion =
                                                    filteredQuestion;
                                                dynamic tempAnswer =
                                                    filteredAnswer;
                                                dynamic tempDeck = filteredDeck;
                                                filteredDeck = dropdownValue;
                                                if (tempDeck == 'Computing') {
                                                  tempDeck = 1;
                                                }

                                                if (tempDeck == 'English') {
                                                  tempDeck = 2;
                                                }

                                                if (tempDeck == 'Geography') {
                                                  tempDeck = 3;
                                                }

                                                if (tempDeck == 'History') {
                                                  tempDeck = 4;
                                                }

                                                if (tempDeck == 'Maths') {
                                                  tempDeck = 5;
                                                }

                                                if (tempDeck == 'Science') {
                                                  tempDeck = 6;
                                                }
                                                // Handle the apply button press
                                                if (controller1
                                                    .text.isNotEmpty) {
                                                  filteredQuestion =
                                                      controller1.text;
                                                }
                                                if (controller2
                                                    .text.isNotEmpty) {
                                                  filteredAnswer =
                                                      controller2.text;
                                                }
                                                if (dropdownValue !=
                                                    'keep same') {
                                                  if (filteredDeck ==
                                                      'Computing') {
                                                    filteredDeck = 1;
                                                  }

                                                  if (filteredDeck ==
                                                      'English') {
                                                    filteredDeck = 2;
                                                  }

                                                  if (filteredDeck ==
                                                      'Geography') {
                                                    filteredDeck = 3;
                                                  }

                                                  if (filteredDeck ==
                                                      'History') {
                                                    filteredDeck = 4;
                                                  }

                                                  if (filteredDeck == 'Maths') {
                                                    filteredDeck = 5;
                                                  }

                                                  if (filteredDeck ==
                                                      'Science') {
                                                    filteredDeck = 6;
                                                  }
                                                } else {
                                                  filteredDeck = tempDeck;
                                                }
                                                neonClient.query(
                                                    query:
                                                        "UPDATE cards SET question = '$filteredQuestion', answer = '$filteredAnswer', deck_id = $filteredDeck WHERE question = '$tempQuestion' AND answer = '$tempAnswer' AND deck_id = $tempDeck AND user_id = $finaluserid");
                                                controller1.clear();
                                                controller2.clear();
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          BrowsePage(
                                                              key:
                                                                  UniqueKey())),
                                                );
                                              }
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
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

Future<List<List<String>>> getBrowseCards() async {
  final results = await neonClient.query(
      query:
          "SELECT question, deck_id, answer FROM cards WHERE user_id = $finaluserid");
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
