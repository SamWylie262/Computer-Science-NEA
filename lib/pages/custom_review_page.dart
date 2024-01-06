import 'package:flutter/material.dart';
import 'package:secondly/pages/flashcards_page.dart';
import 'package:secondly/configs/constants.dart';
import 'package:secondly/components/home_page/topic_tile.dart';

class CustomReviewPage extends StatefulWidget {
  const CustomReviewPage({super.key});

  @override
  State<CustomReviewPage> createState() => _CustomReviewPageState();
}

class _CustomReviewPageState extends State<CustomReviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        Text('Finish', style: TextStyle(color: Colors.black)),
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
                        Text('Again', style: TextStyle(color: Colors.black)),
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
