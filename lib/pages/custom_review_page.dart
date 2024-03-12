// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:secondly/pages/flashcards_page.dart';
import 'package:secondly/configs/constants.dart';
import 'package:secondly/models/connection.dart';
import 'package:secondly/pages/login_page.dart';

class CustomReviewPage extends StatefulWidget {
  const CustomReviewPage({super.key});

  @override
  State<CustomReviewPage> createState() => _CustomReviewPageState();
}

class _CustomReviewPageState extends State<CustomReviewPage> {
  bool showAnswerAndBottomBar = false; // hide answer and bottom bar
  int totalCards = customQuestions.length; // total cards to review
  int currentCard = 1; // current card being reviewed
  @override
  void initState() {
    super.initState();
  }

  void answeredCard(int newDue) async {
    // update the due date of the card
    var customQuestion = customQuestions[0];
    customQuestion = customQuestion.substring(1, customQuestion.length - 1);
    if (newDue != 0) {
      customQuestions.removeAt(0);
      customAnswers.removeAt(0);
      var cardIdOfDeleteResult = await neonClient.query(
          // get the card id of the card to be deleted
          query:
              "SELECT card_id FROM cards WHERE question = '$customQuestion' AND user_id = $finaluserid");
      var cardIdOfDelete = cardIdOfDeleteResult[0]
          .toString()
          .replaceAll('[', '')
          .replaceAll(']', '');

      await neonClient.query(
          // update the due date of the card (by deleting it from custom study table)
          query:
              "DELETE FROM custom_study WHERE card_id = $cardIdOfDelete AND user_id = $finaluserid");
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
      // on tap, show answer and bottom bar
      onTap: () {
        setState(() {
          showAnswerAndBottomBar = true; // show answer and bottom bar
        });
      },
      child: Scaffold(
        appBar: AppBar(
          // app bar
          centerTitle: true,
          title: const Text('Custom Review Page'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              // on back button pressed, navigate to flashcards page
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
              Row(
                // row to display the current card number
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  if (customQuestions.isNotEmpty)
                    Text(
                      '$currentCard/$totalCards',
                      style: const TextStyle(fontSize: 20),
                    ),
                ],
              ),
              if (customQuestions.isEmpty)
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: const Text(
                    // if no cards to review, display no cards to review
                    'No cards to review!',
                    style: TextStyle(fontSize: 20),
                  ),
                )
              else
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      // display the question
                      customQuestions[0]
                          .substring(1, customQuestions[0].length - 1),
                      style: const TextStyle(fontSize: 30),
                    ),
                  ),
                ),
              const SizedBox(height: 20),
              if (showAnswerAndBottomBar &&
                  customQuestions
                      .isNotEmpty) // if show answer and bottom bar is true, display the answer
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      customAnswers[0]
                          .substring(1, customAnswers[0].length - 1),
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                ),
            ],
          ),
        ),
        bottomNavigationBar:
            showAnswerAndBottomBar && customQuestions.isNotEmpty
                // if show answer and bottom bar is true, display the bottom bar
                ? BottomAppBar(
                    color: Theme.of(context).primaryColor,
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Row(
                        // row to display the bottom bar
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
                                  if (currentCard < totalCards) {
                                    // if current card is less than total cards, increment current card
                                    currentCard = currentCard + 1;
                                  }
                                  answeredCard(
                                      1); // update the due date of the card
                                  setState(() {
                                    showAnswerAndBottomBar =
                                        false; // hide answer and bottom bar
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: klogo,
                                ),
                                child: const Column(
                                  children: [
                                    // display the text of the button
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
                                  if (currentCard < totalCards) {
                                    // if current card is less than total cards, increment current card
                                    currentCard = currentCard + 1;
                                  }
                                  answeredCard(
                                      0); // update the due date of the card
                                  setState(() {
                                    showAnswerAndBottomBar =
                                        false; // hide answer and bottom bar
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: klogo,
                                ),
                                child: const Column(
                                  children: [
                                    // display the text of the button
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
