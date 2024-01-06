import 'package:flutter/material.dart';
import 'package:secondly/configs/constants.dart';
import 'package:secondly/pages/flashcards_page.dart';
import 'package:secondly/components/home_page/topic_tile.dart';
import 'package:secondly/models/connection.dart';

class DailyReviewPage extends StatefulWidget {
  const DailyReviewPage({super.key});

  @override
  State<DailyReviewPage> createState() => _DailyReviewPageState();
}

class _DailyReviewPageState extends State<DailyReviewPage> {
  bool showAnswerAndBottomBar = false;
  @override
  void initState() {
    super.initState();
    getCards();
  }

  void getCards() async {
    if (tappedTopic == 'Computing') {
      tappedTopic = '1';
    }

    if (tappedTopic == 'English') {
      tappedTopic = '2';
    }

    if (tappedTopic == 'Geography') {
      tappedTopic = '3';
    }

    if (tappedTopic == 'History') {
      tappedTopic = '4';
    }

    if (tappedTopic == 'Maths') {
      tappedTopic = '5';
    }

    if (tappedTopic == 'Science') {
      tappedTopic = '6';
    }
    final dailyQuestionsResult = await neonClient.query(
        query:
            'SELECT question FROM Cards WHERE due <= 0 AND deck_id = $tappedTopic');
    List<String> dailyQuestions =
        dailyQuestionsResult.map((result) => result.toString()).toList();
    final dailyAnswersResult = await neonClient.query(
        query:
            'SELECT answer FROM Cards WHERE due <= 0 AND deck_id = $tappedTopic');
    List<String> dailyAnswers =
        dailyAnswersResult.map((result) => result.toString()).toList();
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Question',
                style: TextStyle(fontSize: 30),
              ),
              const SizedBox(height: 20),
              if (showAnswerAndBottomBar)
                const Text(
                  'Answer',
                  style: TextStyle(fontSize: 30),
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
                      Padding(
                        padding: const EdgeInsets.all(0),
                        child: SizedBox(
                          width: 90.0,
                          height: 70.0,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: klogo,
                            ),
                            child: const Column(
                              children: [
                                Text('Easy',
                                    style: TextStyle(color: Colors.black)),
                                Text('month',
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
                            onPressed: () {},
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
                            onPressed: () {},
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
                            onPressed: () {},
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
