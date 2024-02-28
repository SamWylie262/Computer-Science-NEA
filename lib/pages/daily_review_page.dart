// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:secondly/configs/constants.dart';
import 'package:secondly/pages/flashcards_page.dart';
import 'package:secondly/models/connection.dart';

class DailyReviewPage extends StatefulWidget {
  const DailyReviewPage({super.key});

  @override
  State<DailyReviewPage> createState() => _DailyReviewPageState();
}

class _DailyReviewPageState extends State<DailyReviewPage> {
  bool showAnswerAndBottomBar = false;
  int totalCards = dailyQuestions.length;
  int currentCard = 1;

  @override
  void initState() {
    super.initState();
  }

  void answeredCard(int newDue) async {
    var question = dailyQuestions[0];
    question = question.substring(1, question.length - 1);
    neonClient.query(
        query: "UPDATE cards SET due = $newDue WHERE question = '$question'");
    if (newDue != 0) {
      dailyQuestions.removeAt(0);
      dailyAnswers.removeAt(0);
    } else {
      String question = dailyQuestions.removeAt(0);
      dailyQuestions.add(question);
      String answer = dailyAnswers.removeAt(0);
      dailyAnswers.add(answer);
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
          title: const Text('Daily Review Page'),
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
          // Add this at the top of your widget tree
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  if (dailyQuestions.isNotEmpty)
                    Text(
                      '$currentCard/$totalCards',
                      style: const TextStyle(fontSize: 20),
                    ),
                ],
              ),
              if (dailyQuestions.isEmpty)
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: const Text(
                    'No more questions for today!',
                    style: TextStyle(fontSize: 30),
                  ),
                )
              else
                Text(
                  dailyQuestions[0].substring(1, dailyQuestions[0].length - 1),
                  style: const TextStyle(fontSize: 30),
                ),
              const SizedBox(height: 20),
              if (showAnswerAndBottomBar && dailyQuestions.isNotEmpty)
                Text(
                  dailyAnswers[0].substring(1, dailyAnswers[0].length - 1),
                  style: const TextStyle(fontSize: 30),
                ),
            ],
          ),
        ),
        bottomNavigationBar: showAnswerAndBottomBar && dailyQuestions.isNotEmpty
            ? BottomAppBar(
                color: Theme.of(context).primaryColor,
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(0),
                        child: SizedBox(
                          width: 90.0,
                          height: 70.0,
                          child: ElevatedButton(
                            onPressed: () {
                              if (currentCard <= totalCards) {
                                currentCard = currentCard + 1;
                              }
                              answeredCard(30);
                              setState(() {
                                showAnswerAndBottomBar = false;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: klogo,
                            ),
                            child: const Column(
                              children: [
                                Text('Easy',
                                    style: TextStyle(color: Colors.black)),
                                Text('later',
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
                              if (currentCard <= totalCards) {
                                currentCard = currentCard + 1;
                              }
                              answeredCard(7);
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
                                Text('7 days',
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
                              if (currentCard <= totalCards) {
                                currentCard = currentCard + 1;
                              }
                              answeredCard(2);
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
                                Text('2 days',
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
                          width: 87.0,
                          height: 70.0,
                          child: ElevatedButton(
                            onPressed: () {
                              if (currentCard <= totalCards) {
                                currentCard = currentCard + 1;
                              }
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
                                Text('Hard',
                                    style: TextStyle(color: Colors.black)),
                                Text('Today',
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
