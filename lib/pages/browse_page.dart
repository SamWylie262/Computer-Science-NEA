import 'package:flutter/material.dart';
import 'package:secondly/pages/home_page.dart';
import 'package:secondly/models/connection.dart';
import 'package:secondly/configs/constants.dart';
import 'package:secondly/pages/login_page.dart';

class BrowsePage extends StatefulWidget {
  const BrowsePage({super.key});

  @override
  State<BrowsePage> createState() => _BrowsePageState();
}

class _BrowsePageState extends State<BrowsePage> {
  String searchQuery = ''; // Added searchQuery
  String deckQuery = ''; // Added deckQuery
  String dropdownValue = ''; // Added default value for dropdown
  String dropdownValue2 = ''; // Added default value for dropdown
  final controller1 = TextEditingController();
  final controller2 = TextEditingController();
  @override
  void initState() {
    super.initState();
    getBrowseCards(); // Call the function to get the cards
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // This is the app bar
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
            // This is the search bar
            key: const Key('searchBar'),
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
          Padding(
            // This is the filter by deck dropdown
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 50,
              child: Row(
                children: <Widget>[
                  const Text('Filter by deck:'),
                  const Spacer(),
                  ButtonTheme(
                    key: const Key('filterByDeck'),
                    alignedDropdown: true,
                    child: DropdownButton<String>(
                      value: dropdownValue2,
                      onChanged: (String? newValue) {
                        setState(() {
                          deckQuery = newValue!;
                          dropdownValue2 = newValue;
                        });
                      },
                      items: <String>[
                        // These are the options in the dropdown
                        '',
                        'Computing',
                        'English',
                        'Geography',
                        'History',
                        'Maths',
                        'Science'
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
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
            ),
          ),
          const Divider(
            // This is the divider
            color: Colors.black,
            thickness: 1,
          ),
          Expanded(
            // This is the list of cards
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
                    if (snapshot.data![0][i].contains(searchQuery) &&
                            snapshot.data![1][i].contains(deckQuery) ||
                        snapshot.data![1][i].contains(searchQuery) &&
                            snapshot.data![1][i].contains(deckQuery) ||
                        snapshot.data![2][i].contains(searchQuery) &&
                            snapshot.data![1][i].contains(deckQuery)) {
                      filteredData.add([
                        snapshot.data![0][i],
                        snapshot.data![1][i],
                        snapshot.data![2][i]
                      ]); // This is the filtered data
                    }
                  }
                  var widgets = <Widget>[];
                  for (var index = 0; index < (filteredData.length); index++) {
                    // This is the for loop to create the card list
                    dynamic filteredQuestion =
                        filteredData.isNotEmpty ? filteredData[index][0] : '';
                    dynamic filteredDeck = filteredData[index][1];
                    dynamic filteredAnswer = filteredData[index][2];
                    widgets.add(
                      GestureDetector(
                        onTap: () {
                          // This is the onTap function
                          TextEditingController controller1 =
                              TextEditingController(text: filteredQuestion);
                          TextEditingController controller2 =
                              TextEditingController(text: filteredAnswer);
                          dropdownValue = filteredDeck;
                          refreshModalBottomSheet(
                              // This is the modal bottom sheet
                              context,
                              dropdownValue,
                              controller1,
                              controller2,
                              filteredQuestion,
                              filteredAnswer,
                              filteredDeck);
                        },
                        child: Column(
                          // This is the card list
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text('Question: $filteredQuestion'),
                                  Text('Answer: $filteredAnswer'),
                                  Text('Deck: $filteredDeck'),
                                ],
                              ),
                            ),
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
  // This is the function to get the cards
  final results = await neonClient.query(
      // This is the query to get the cards
      query:
          "SELECT question, deck_id, answer FROM cards WHERE user_id = $finaluserid");
  List<String> questions = results
      .map((row) => row[0].toString())
      .toList(); // This is the list of questions
  List<String> decks = results
      .map((row) => row[1].toString())
      .toList(); // This is the list of deck_ids
  List<String> answers = results
      .map((row) => row[2].toString())
      .toList(); // This is the list of answers
  for (var i = 0; i < questions.length; i++) {
    // This is the for loop to convert the deck_id to the deck name
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

Future<void> deleteCardFromDatabase(
    filteredQuestion, filteredAnswer, filteredDeck) async {
  // This is the function to delete the card from the database
  if (filteredDeck == 'Computing') {
    filteredDeck = 1;
  }
  if (filteredDeck == 'English') {
    filteredDeck = 2;
  }
  if (filteredDeck == 'Geography') {
    filteredDeck = 3;
  }
  if (filteredDeck == 'History') {
    filteredDeck = 4;
  }
  if (filteredDeck == 'Maths') {
    filteredDeck = 5;
  }
  if (filteredDeck == 'Science') {
    filteredDeck = 6;
  }
  Future.delayed(const Duration(seconds: 0), () {});
  await neonClient.query(
      // Delete the card from the custom study
      query:
          "DELETE FROM custom_study WHERE card_id in (SELECT card_id FROM cards WHERE question = '$filteredQuestion' AND answer = '$filteredAnswer' AND deck_id = $filteredDeck AND user_id = $finaluserid)");
  await neonClient.query(
      // Delete the card from the database for good
      query:
          "DELETE FROM cards WHERE question = '$filteredQuestion' AND answer = '$filteredAnswer' AND deck_id = $filteredDeck AND user_id = $finaluserid");
}

void refreshModalBottomSheet(BuildContext context, dropdownValue, controller1,
    controller2, filteredQuestion, filteredAnswer, filteredDeck) {
  Navigator.push(
    // This is the navigator to the browse page
    context,
    MaterialPageRoute(builder: (context) => BrowsePage(key: UniqueKey())),
  );
  showModalBottomSheet(
      // This is the modal bottom sheet
      context: context,
      builder: (BuildContext context) {
        return Container(
          color: klogo,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: DefaultTextStyle(
              style: const TextStyle(
                color: Colors.black,
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
                            onChanged: (newValue) {
                              dropdownValue = newValue!;
                              refreshModalBottomSheet(
                                  context,
                                  dropdownValue,
                                  controller1,
                                  controller2,
                                  filteredQuestion,
                                  filteredAnswer,
                                  filteredDeck);
                            },
                            items: <String>[
                              // These are the options in the dropdown
                              'Computing',
                              'English',
                              'Geography',
                              'History',
                              'Maths',
                              'Science'
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
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
                      // This is the text field for the question
                      controller: controller1,
                      decoration: const InputDecoration(
                        labelText: 'Enter updated question field',
                      ),
                    ),
                    TextField(
                      // This is the text field for the answer
                      controller: controller2,
                      decoration: const InputDecoration(
                        labelText: 'Enter updated answer field',
                      ),
                    ),
                    Align(
                      // This is the delete icon
                      alignment: Alignment.bottomRight,
                      child: IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () async {
                          await deleteCardFromDatabase(
                              filteredQuestion, filteredAnswer, filteredDeck);
                          // ignore: use_build_context_synchronously
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    BrowsePage(key: UniqueKey())),
                          );
                        },
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: kbutton, // replace with your color
                      ),
                      onPressed: () {
                        final questionText = controller1.text;
                        final answerText = controller2.text;
                        if (questionText.isEmpty || answerText.isEmpty) {
                          // Show a snackbar if the fields are empty
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text(
                                    'Please enter both question and answer')),
                          );
                        } else {
                          dynamic tempQuestion = filteredQuestion;
                          dynamic tempAnswer = filteredAnswer;
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
                          if (controller1.text.isNotEmpty) {
                            filteredQuestion = controller1.text;
                          }
                          if (controller2.text.isNotEmpty) {
                            filteredAnswer = controller2.text;
                          }
                          if (dropdownValue != 'keep same') {
                            if (filteredDeck == 'Computing') {
                              filteredDeck = 1;
                            }

                            if (filteredDeck == 'English') {
                              filteredDeck = 2;
                            }

                            if (filteredDeck == 'Geography') {
                              filteredDeck = 3;
                            }

                            if (filteredDeck == 'History') {
                              filteredDeck = 4;
                            }

                            if (filteredDeck == 'Maths') {
                              filteredDeck = 5;
                            }

                            if (filteredDeck == 'Science') {
                              filteredDeck = 6;
                            }
                          } else {
                            filteredDeck = tempDeck;
                          }
                          neonClient.query(
                              // Update the card
                              query:
                                  "UPDATE cards SET question = '$filteredQuestion', answer = '$filteredAnswer', deck_id = $filteredDeck WHERE question = '$tempQuestion' AND answer = '$tempAnswer' AND deck_id = $tempDeck AND user_id = $finaluserid");
                          controller1.clear();
                          controller2.clear();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    BrowsePage(key: UniqueKey())),
                          );
                        }
                      },
                      child: const Text(
                        'Apply',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      });
}
