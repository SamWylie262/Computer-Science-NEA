// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:secondly/configs/constants.dart';
import 'package:secondly/pages/flashcards_page.dart';
import 'package:secondly/models/connection.dart';
import 'package:secondly/pages/home_page.dart';

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
    // update the due date of the card
    var question = dailyQuestions[0];
    question = question.substring(1, question.length - 1);
    DateTime newDate = now.add(Duration(days: newDue));
    print(newDate);
    neonClient.query(
        query:
            "UPDATE cards SET due = '${newDate.year}-${newDate.month.toString().padLeft(2, '0')}-${newDate.day.toString().padLeft(2, '0')}' WHERE question = '$question'");
    if (newDue != 0) {
      // if the card is not being reviewed again, remove it from the list
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
          showAnswerAndBottomBar = true; // show the answer and bottom bar
        });
      },
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Daily Review Page'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              // navigate to the flashcards page
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
                      // display the current card number
                      '$currentCard/$totalCards',
                      style: const TextStyle(fontSize: 20),
                    ),
                ],
              ),
              if (dailyQuestions
                  .isEmpty) // if there are no more cards to review
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: const Text(
                    'No more questions for today!',
                    style: TextStyle(fontSize: 30),
                  ),
                )
              else
                Text(
                  // display the current question
                  dailyQuestions[0].substring(1, dailyQuestions[0].length - 1),
                  style: const TextStyle(fontSize: 30),
                ),
              const SizedBox(height: 20),
              if (showAnswerAndBottomBar &&
                  dailyQuestions
                      .isNotEmpty) // if the answer and bottom bar should be displayed
                Text(
                  // display the current answer
                  dailyAnswers[0].substring(1, dailyAnswers[0].length - 1),
                  style: const TextStyle(fontSize: 30),
                ),
            ],
          ),
        ),
        bottomNavigationBar: showAnswerAndBottomBar &&
                dailyQuestions
                    .isNotEmpty // if the answer and bottom bar should be displayed
            ? BottomAppBar(
                // display the bottom bar with the review options
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
                              if (currentCard < totalCards) {
                                // checks to see if there are more cards
                                currentCard = currentCard + 1;
                              }
                              answeredCard(
                                  30); // update the due date of the card
                              setState(() {
                                showAnswerAndBottomBar =
                                    false; // hide the answer and bottom bar
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: klogo,
                            ),
                            child: const Column(
                              // display the review option
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
                              if (currentCard < totalCards) {
                                // checks to see if there are more cards
                                currentCard = currentCard + 1;
                              }
                              answeredCard(
                                  7); // update the due date of the card
                              setState(() {
                                showAnswerAndBottomBar =
                                    false; // hide the answer and bottom bar
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: klogo,
                            ),
                            child: const Column(
                              // display the review option
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
                              if (currentCard < totalCards) {
                                // checks to see if there are more cards
                                currentCard = currentCard + 1;
                              }
                              answeredCard(
                                  2); // update the due date of the card
                              setState(() {
                                showAnswerAndBottomBar =
                                    false; // hide the answer and bottom bar
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: klogo,
                            ),
                            child: const Column(
                              // display the review option
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
                              if (currentCard < totalCards) {
                                // checks to see if there are more cards
                                currentCard = currentCard + 1;
                              }
                              answeredCard(
                                  0); // update the due date of the card
                              setState(() {
                                showAnswerAndBottomBar =
                                    false; // hide the answer and bottom bar
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: klogo,
                            ),
                            child: const Column(
                              // display the review option
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
