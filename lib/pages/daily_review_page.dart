import 'package:flutter/material.dart';
import 'package:secondly/configs/constants.dart';
import 'package:secondly/pages/flashcards_page.dart';
import 'package:secondly/components/home_page/topic_tile.dart';

class DailyReviewPage extends StatefulWidget {
  const DailyReviewPage({super.key});

  @override
  State<DailyReviewPage> createState() => _DailyReviewPageState();
}

class _DailyReviewPageState extends State<DailyReviewPage> {
  @override
  void initState() {
    super.initState();
    getCards();
  }

  void getCards() async {
    // List<Map<String, dynamic>> cards = await neonClient.select(
    //   table: 'cards',
    //   columns: ['*'],
    //   where: 'topic = ?',
    //   whereArgs: [tappedTopic],
    // );
    // setState(() {
    //   cards = cards;
    // });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
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
                        Text('Easy', style: TextStyle(color: Colors.black)),
                        Text('month', style: TextStyle(color: Colors.black)),
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
                        Text('Good', style: TextStyle(color: Colors.black)),
                        Text('7 days', style: TextStyle(color: Colors.black)),
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
                        Text('Tricky', style: TextStyle(color: Colors.black)),
                        Text('2 days', style: TextStyle(color: Colors.black)),
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
                        Text('Hard', style: TextStyle(color: Colors.black)),
                        Text('Today', style: TextStyle(color: Colors.black)),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
