import 'package:flutter/material.dart';
import 'package:secondly/models/connection.dart';
import 'package:secondly/pages/home_page.dart';

class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  String dropdownValue = 'Computing';
  final textController1 = TextEditingController();
  final textController2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Cards'),
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
                    value: dropdownValue,
                    onChanged: (String? newValue) {
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
                  onPressed: () {
                    var dropdown = dropdownValue;
                    final questionText = textController1.text;
                    final answerText = textController2.text;
                    if (questionText.isEmpty || answerText.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content:
                                Text('Please enter both question and answer')),
                      );
                    } else {
                      addCard(dropdown, questionText, answerText);
                      textController1.clear();
                      textController2.clear();
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

void addCard(dropdown, questionText, answerText) async {
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
  }
  neonClient.query(
    query:
        "INSERT INTO cards (deck_id, question, answer, due, tag_id) VALUES ($dropdown, '$questionText', '$answerText', 0, 1)",
  );
}
