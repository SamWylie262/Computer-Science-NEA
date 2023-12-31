// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:secondly/pages/flashcards_page.dart';
import 'package:secondly/configs/constants.dart';
import 'package:secondly/models/connection.dart';

class CustomReviewPage extends StatefulWidget {
  const CustomReviewPage({super.key});

  @override
  State<CustomReviewPage> createState() => _CustomReviewPageState();
}

class _CustomReviewPageState extends State<CustomReviewPage> {
  bool showAnswerAndBottomBar = false;

  @override
  void initState() {
    super.initState();
  }

  void answeredCard(int newDue) async {
    var question = customQuestions[0];
    question = question.substring(1, question.length - 1);
    var cardIdOfDelete = await neonClient.query(
        query: 'SELECT card_id FROM cards WHERE question = "$customQuestions"');
    if (newDue != 0) {
      await neonClient.query(
          query: 'DELETE FROM custom_study WHERE card_id = $cardIdOfDelete');
      customQuestions.removeAt(0);
      customAnswers.removeAt(0);
    } else {
      String question = customQuestions.removeAt(0);
      customQuestions.add(question);
      String answer = customAnswers.removeAt(0);
      customAnswers.add(answer);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          showAnswerAndBottomBar = true;
        });
      },
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Custom Review Page'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const FlashcardsPage()),
              );
            },
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              if (customQuestions.isEmpty)
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: const Text(
                    'No cards to review!',
                    style: TextStyle(fontSize: 20),
                  ),
                )
              else
                Text(
                  customQuestions[0],
                  style: const TextStyle(fontSize: 30),
                ),
              const SizedBox(height: 20),
              if (showAnswerAndBottomBar && customQuestions.isNotEmpty)
                Text(
                  customAnswers[0],
                  style: const TextStyle(fontSize: 20),
                ),
            ],
          ),
        ),
        bottomNavigationBar: showAnswerAndBottomBar
            ? BottomAppBar(
                color: Theme.of(context).primaryColor,
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      const SizedBox(width: 0),
                      Padding(
                        padding: const EdgeInsets.all(0),
                        child: SizedBox(
                          width: 90.0,
                          height: 70.0,
                          child: ElevatedButton(
                            onPressed: () {
                              answeredCard(1);
                              setState(() {
                                showAnswerAndBottomBar = false;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: klogo,
                            ),
                            child: const Column(
                              children: [
                                Text('Good',
                                    style: TextStyle(color: Colors.black)),
                                Text('Finish',
                                    style: TextStyle(color: Colors.black)),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 0),
                      Padding(
                        padding: const EdgeInsets.all(0),
                        child: SizedBox(
                          width: 90.0,
                          height: 70.0,
                          child: ElevatedButton(
                            onPressed: () {
                              answeredCard(0);
                              setState(() {
                                showAnswerAndBottomBar = false;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: klogo,
                            ),
                            child: const Column(
                              children: [
                                Text('Tricky',
                                    style: TextStyle(color: Colors.black)),
                                Text('Again',
                                    style: TextStyle(color: Colors.black)),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            : null,
      ),
    );
  }
}
