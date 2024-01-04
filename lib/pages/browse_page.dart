import 'package:flutter/material.dart';
import 'package:secondly/pages/home_page.dart';

class BrowsePage extends StatefulWidget {
  const BrowsePage({super.key});

  @override
  State<BrowsePage> createState() => _BrowsePageState();
}

class _BrowsePageState extends State<BrowsePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Browse Cards'),
        centerTitle: true,
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Search',
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: <Widget>[
                        Text('Question'), // Add title to the first column
                        Expanded(
                          child: Container(),
                        ),
                      ],
                    ),
                  ),
                  VerticalDivider(color: Colors.black),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Text('Deck'), // Add title to the second column
                        Expanded(
                          child: Container(),
                        ),
                      ],
                    ),
                  ),
                  VerticalDivider(color: Colors.black),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Text('Answer'), // Add title to the third column
                        Expanded(
                          child: Container(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
