import 'package:flutter/material.dart';
import 'package:secondly/pages/home_page.dart';
import 'package:secondly/pages/daily_review_page.dart';
import 'package:secondly/pages/custom_review_page.dart';
import 'package:secondly/models/connection.dart';
import 'package:secondly/components/home_page/topic_tile.dart';

class FlashcardsPage extends StatefulWidget {
  const FlashcardsPage({super.key});

  @override
  State<FlashcardsPage> createState() => _FlashcardsPageState();
}

class _FlashcardsPageState extends State<FlashcardsPage> {
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
                getCards();
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
  dailyQuestions =
      dailyQuestionsResult.map((result) => result.toString()).toList();
  final dailyAnswersResult = await neonClient.query(
      query:
          'SELECT answer FROM Cards WHERE due <= 0 AND deck_id = $tappedTopic');
  dailyAnswers = dailyAnswersResult.map((result) => result.toString()).toList();
  print(dailyQuestions);
  print(dailyAnswers);
  await Future.delayed(const Duration(seconds: 1));
}
