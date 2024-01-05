import 'package:flutter/material.dart';
import 'package:secondly/pages/flashcards_page.dart';

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
    );
  }
}
