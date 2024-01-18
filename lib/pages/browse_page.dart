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
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (value) {
                // Perform the search operation
              },
              decoration: const InputDecoration(
                labelText: "Search",
                hintText: "Search",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                ),
              ),
            ),
          ),
          const Row(
            children: <Widget>[
              Expanded(
                child: Text('Question', textAlign: TextAlign.center),
              ),
              Expanded(
                child: Text('Deck', textAlign: TextAlign.center),
              ),
              Expanded(
                child: Text('Answer', textAlign: TextAlign.center),
              ),
            ],
          ),
          Expanded(
            child: FutureBuilder<List<List<String>>>(
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
                                snapshot.data?.elementAt(0).elementAt(index) ??
                                    ''),
                          ),
                          const VerticalDivider(
                            color: Colors.black,
                            thickness: 10,
                            width: 100,
                          ),
                          Expanded(
                            child: Text(
                                snapshot.data?.elementAt(1).elementAt(index) ??
                                    ''),
                          ),
                          const VerticalDivider(color: Colors.black),
                          Expanded(
                            child: Text(
                                snapshot.data?.elementAt(2).elementAt(index) ??
                                    ''),
                          ),
                        ],
                      );
                    },
                  );
                }
              },
            ),
          ),
        ],
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
  for (var i = 0; i < questions.length; i++) {
    if (decks[i] == '1') {
      decks[i] = 'Computing';
    }

    if (decks[i] == '2') {
      decks[i] = 'English';
    }

    if (decks[i] == '3') {
      decks[i] = 'Geography';
    }

    if (decks[i] == '4') {
      decks[i] = 'History';
    }

    if (decks[i] == '5') {
      decks[i] = 'Maths';
    }

    if (decks[i] == '6') {
      decks[i] = 'Science';
    }
  }
  return [questions, decks, answers];
}
