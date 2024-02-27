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
    deleteCards();
    getCards();
    getReviewCards();
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
              onPressed: () {
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
  final dailyQuestionsResult = await neonClient.query(
      query:
          "SELECT question FROM Cards WHERE due <= 0 AND deck_id = $tappedTopic AND user_id = $finaluserid");
  dailyQuestions =
      dailyQuestionsResult.map((result) => result.toString()).toList();
  final dailyAnswersResult = await neonClient.query(
      query:
          "SELECT answer FROM Cards WHERE due <= 0 AND deck_id = $tappedTopic AND user_id = $finaluserid");
  dailyAnswers = dailyAnswersResult.map((result) => result.toString()).toList();
}

Future<void> getReviewCards() async {
  neonClient.query(
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

Future<void> deleteCards() async {
  await neonClient.query(
      query:
          "DELETE FROM custom_study WHERE card_id IN (SELECT card_id FROM cards WHERE user_id = $finaluserid)");
}
