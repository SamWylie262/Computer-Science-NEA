import 'package:flutter/material.dart';
import 'package:secondly/pages/home_page.dart';
import 'package:secondly/pages/daily_review_page.dart';
import 'package:secondly/pages/custom_review_page.dart';
import 'package:secondly/models/connection.dart';
import 'package:secondly/components/home_page/topic_tile.dart';
import 'package:secondly/pages/login_page.dart';

class FlashcardsPage extends StatefulWidget {
  const FlashcardsPage({super.key});

  @override
  State<FlashcardsPage> createState() => _FlashcardsPageState();
}

class _FlashcardsPageState extends State<FlashcardsPage> {
  @override
  void initState() {
    super.initState();
    if (tappedTopic == 'Computing') {
      // convert the topic name to the topic id
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
    deleteCards(); // delete all cards from custom_study table
    getCards(); // get all cards from the daily review table
    getReviewCards(); // get all cards from the custom review table
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Review Page'),
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              // create a button to navigate to the daily review page
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DailyReviewPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).primaryColor,
                minimumSize: const Size(200, 100), // specify the button's size
              ),
              child: const DefaultTextStyle(
                style: TextStyle(fontSize: 24),
                child: Text('Daily Review'),
              ),
            ),
            const SizedBox(height: 75), // add some space between the buttons
            ElevatedButton(
              // create a button to navigate to the custom review page
              onPressed: () async {
                await Future.delayed(const Duration(seconds: 2));
                // ignore: use_build_context_synchronously
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CustomReviewPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).primaryColor,
                minimumSize: const Size(200, 100), // specify the button's size
              ),
              child: const DefaultTextStyle(
                style: TextStyle(fontSize: 24),
                child: Text('Custom Review'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<String> dailyQuestions = [];
List<String> dailyAnswers = [];
List<String> customQuestions = [];
List<String> customAnswers = [];
Future<void> getCards() async {
  // get all cards from the daily review table
  final dailyQuestionsResult = await neonClient.query(
      // get all questions from the daily review table
      query:
          "SELECT question FROM Cards WHERE due <= 0 AND deck_id = $tappedTopic AND user_id = $finaluserid");
  dailyQuestions =
      dailyQuestionsResult.map((result) => result.toString()).toList();
  final dailyAnswersResult = await neonClient.query(
      // get all answers from the daily review table
      query:
          "SELECT answer FROM Cards WHERE due <= 0 AND deck_id = $tappedTopic AND user_id = $finaluserid");
  dailyAnswers = dailyAnswersResult.map((result) => result.toString()).toList();
}

Future<void> getReviewCards() async {
  // get all cards from the custom review table
  await neonClient.query(
      query:
          "INSERT INTO custom_study (card_id, user_id) SELECT card_id, user_id FROM cards WHERE deck_id = $tappedTopic AND user_id = $finaluserid");
  final customQuestionsResult = await neonClient.query(
      query:
          "SELECT question FROM cards WHERE card_id IN (SELECT card_id FROM custom_study) AND user_id = $finaluserid");
  customQuestions =
      customQuestionsResult.map((result) => result.toString()).toList();
  final customAnswersResult = await neonClient.query(
      query:
          "SELECT answer FROM cards WHERE card_id IN (SELECT card_id FROM custom_study) AND user_id = $finaluserid");
  customAnswers =
      customAnswersResult.map((result) => result.toString()).toList();
}

deleteCards() async {
  // delete all cards from the custom study table
  await neonClient.query(
      query:
          "DELETE FROM custom_study WHERE card_id IN (SELECT card_id FROM cards WHERE user_id = $finaluserid)");
}
