import 'package:flutter/material.dart';
import 'package:secondly/pages/home_page.dart';
import 'package:secondly/models/connection.dart';

class BrowsePage extends StatefulWidget {
  const BrowsePage({required Key key}) : super(key: key);

  @override
  State<BrowsePage> createState() => _BrowsePageState();
}

class _BrowsePageState extends State<BrowsePage> {
  @override
  void initState() {
    super.initState();
    getBroseCards();
  }

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
      body: FutureBuilder<List<List<String>>>(
        future: getBroseCards(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else {
            return ListView.builder(
              itemCount: snapshot.data?.elementAt(0).length ?? 0,
              itemBuilder: (context, index) {
                return Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                          snapshot.data?.elementAt(0).elementAt(index) ?? ''),
                    ),
                    Expanded(
                      child: Text(
                          snapshot.data?.elementAt(1).elementAt(index) ?? ''),
                    ),
                    Expanded(
                      child: Text(
                          snapshot.data?.elementAt(2).elementAt(index) ?? ''),
                    ),
                  ],
                );
              },
            );
          }
        },
      ),
    );
  }
}

Future<List<List<String>>> getBroseCards() async {
  final results = await neonClient
      .select(table: "cards", columns: ["question", "deck_id", "answer"]);
  List<String> questions = results.map((row) => row[0].toString()).toList();
  List<String> decks = results.map((row) => row[1].toString()).toList();
  List<String> answers = results.map((row) => row[2].toString()).toList();
  return [questions, decks, answers];
}
