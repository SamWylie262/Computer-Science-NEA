import 'package:flutter/material.dart';
import 'package:secondly/pages/home_page.dart';
import 'dart:async';
import 'package:mysql1/mysql1.dart';
import 'package:secondly/models/mysql.dart';

class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  var db = new Mysql();
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
                Text('Deck:'),
                Spacer(),
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
                        child: Container(
                          width: 200,
                          child: Text(value),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            Row(
              children: <Widget>[
                Text("Question:"),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: TextFormField(
                    controller: textController1,
                    decoration: InputDecoration(
                      labelText: 'Enter some text',
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 60),
            Row(
              children: <Widget>[
                Text("Answer:"),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: TextFormField(
                    controller: textController2,
                    decoration: InputDecoration(
                      labelText: 'Enter some text',
                    ),
                  ),
                ),
              ],
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    final dropdown = dropdownValue;
                    final QuestionText = textController1.text;
                    final AnswerText = textController2.text;
                    AddCard(dropdown, QuestionText, AnswerText);
                    // Add your button logic here
                  },
                  child: Text('Submit'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Theme.of(context)
                        .primaryColor, // Set the button color to primary color
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void AddCard(String dropdown, String QuestionText, String AnswerText) async {
  final db = new Mysql();
  db.getConnection().then((conn) async {
    var result = await conn.query(
        'INSERT INTO cards (deck_id, question, answer) VALUES (?, ?, ?)',
        [1, QuestionText, AnswerText]);
    print(result);
  });
  print(dropdown);
  print(QuestionText);
  print(AnswerText);
}
