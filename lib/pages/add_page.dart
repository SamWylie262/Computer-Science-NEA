import 'package:flutter/material.dart';
import 'package:secondly/pages/home_page.dart';
import 'package:flutter_neon/flutter_neon.dart';
import 'package:orm/logger.dart';
import 'package:orm/orm.dart';

import 'package:orm/logger.dart';

import '../src/generated/prisma/prisma_client.dart';

final prisma = PrismaClient(
  datasources: const Datasources(
    db: 'postgresql://SamWylie262:IfQ9EWP7Yqlu@ep-cold-bird-78274763.eu-central-1.aws.neon.tech/potentialdb?sslmode=require',
  ),
);

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

final neonClient = FlutterNeon(
    connectionUrl:
        "postgresql://SamWylie262:IfQ9EWP7Yqlu@ep-cold-bird-78274763-pooler.eu-central-1.aws.neon.tech/potentialdb?sslmode=disable",
    pooling: true);

void AddCard(String dropdown, String QuestionText, String AnswerText) async {
  print(dropdown);
  print(QuestionText);
  print(AnswerText);
  await neonClient.open();
  final results = await neonClient.selectAll(table: "users");
  print(results.first);
  await neonClient.close();
}
