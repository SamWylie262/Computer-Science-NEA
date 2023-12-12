import 'package:flutter/material.dart';
import 'package:secondly/pages/home_page.dart';

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
          icon: const Icon(Icons.arrow_back),
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
                // Add your button logic here
              },
              child: DefaultTextStyle(
                style: TextStyle(fontSize: 24),
                child: Text('Daily Review'),
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(200, 100), // specify the button's size
              ),
            ),
            SizedBox(height: 75), // add some space between the buttons
            ElevatedButton(
              onPressed: () {
                // Add your button logic here
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(200, 100), // specify the button's size
              ),
              child: DefaultTextStyle(
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
