// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:secondly/models/connection.dart';
import 'package:secondly/pages/home_page.dart';
import 'package:secondly/pages/login_page.dart';

class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  String addPageDropdownValue = 'Computing';
  bool duplicate = false;
  final textController1 = TextEditingController();
  final textController2 = TextEditingController();

  Future<void> addCard(dropdown, questionText, answerText) async {
    if (dropdown == 'Computing') {
      dropdown = 1;
    }

    if (dropdown == 'English') {
      dropdown = 2;
    }

    if (dropdown == 'Geography') {
      dropdown = 3;
    }

    if (dropdown == 'History') {
      dropdown = 4;
    }

    if (dropdown == 'Maths') {
      dropdown = 5;
    }

    if (dropdown == 'Science') {
      dropdown = 6;
    } // Convert the dropdown value to the corresponding deck_id
    final results = await neonClient.query(
      query:
          "SELECT * FROM cards WHERE deck_id = $dropdown AND question = '$questionText' AND answer = '$answerText' AND user_id = $finaluserid",
    );
    if (results.isNotEmpty) {
      duplicate = true;
      return;
    } // Check if the card already exists
    neonClient.query(
      query:
          "INSERT INTO cards (deck_id, question, answer, due, tag_id, user_id) VALUES ($dropdown, '$questionText', '$answerText', 0, 1, $finaluserid)",
    ); // Add the card to the database
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Cards'),
        centerTitle: true,
        leading: IconButton(
          // This is the back button
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
            );
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                const Text('Deck:'),
                const Spacer(),
                ButtonTheme(
                  alignedDropdown: true,
                  child: DropdownButton<String>(
                    value: addPageDropdownValue,
                    onChanged: (String? newValue) {
                      setState(() {
                        addPageDropdownValue =
                            newValue!; // Set the dropdown value to the selected value
                      });
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
            const SizedBox(height: 40),
            const Row(
              children: <Widget>[
                Text("Question:"),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: TextFormField(
                    // This is the text field for the question
                    controller: textController1,
                    decoration: const InputDecoration(
                      labelText: 'Enter some text',
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 60),
            const Row(
              children: <Widget>[
                Text("Answer:"),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: TextFormField(
                    // This is the text field for the answer
                    controller: textController2,
                    decoration: const InputDecoration(
                      labelText: 'Enter some text',
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                ElevatedButton(
                  // This is the submit button
                  onPressed: () async {
                    var dropdown = addPageDropdownValue;
                    final questionText = textController1.text;
                    final answerText = textController2.text;
                    if (questionText.isEmpty || answerText.isEmpty) {
                      // Check if the user has entered both question and answer
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            // Show a snackbar if the user hasn't entered both question and answer
                            content:
                                Text('Please enter both question and answer')),
                      );
                    } else if (questionText.length > 255 ||
                        answerText.length > 255) {
                      // Check if the length of questionText or answerText is greater than 255
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          // Show a snackbar if the length of questionText or answerText is greater than 255
                          content: Text(
                              'Question or answer is too long. Please limit to 255 characters.'),
                        ),
                      );
                    } else {
                      await addCard(dropdown, questionText, answerText);
                      if (duplicate == true) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          // Show a snackbar if the card already exists
                          const SnackBar(
                              content: Text(
                                  'This card already exists in this deck')),
                        );
                        duplicate = false;
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          // Show a snackbar if the card is added successfully
                          const SnackBar(
                              content: Text('Card added successfully')),
                        );
                        textController1.clear();
                        textController2.clear();
                      }
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Theme.of(context)
                        .primaryColor, // Set the button color to primary color
                  ),
                  child: const Text('Submit'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
