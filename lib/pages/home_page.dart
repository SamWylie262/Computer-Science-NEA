import 'package:flutter/material.dart';
import 'package:secondly/animations/fade_in_animation.dart';
import 'package:secondly/pages/add_page.dart';
import 'package:secondly/pages/browse_page.dart';
import 'package:secondly/pages/settings_page.dart';
import '../components/home_page/topic_tile.dart';
import '../data/words.dart';
import 'package:secondly/pages/login_page.dart';
import 'package:secondly/models/connection.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> _topics = [];

  getDeckInfo() async {
    int shush = 0;
    List results = await neonClient.query(
        query:
            "SELECT computing, english, geography, history, maths, science FROM users WHERE user_id = $finaluserid");
    List<String> newList = [];
    for (var list in results) {
      for (var element in list) {
        if (element == true) {
          newList.add(_topics[shush]);
        }
        shush = shush + 1;
      }
    }
    _topics = newList;
  }

  @override
  initState() {
    for (var t in words) {
      if (!_topics.contains(t.topic)) {
        _topics.add(t.topic);
      }
      _topics.sort();
    }
    getDeckInfo();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final widthPadding = size.width * 0.04;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30))),
        toolbarHeight: size.height * 0.15,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: const Icon(Icons.search, color: Colors.white),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => BrowsePage(key: UniqueKey())),
                );
              },
            ),
            const FadeInAnimation(
              child: Text(
                'GCSEPotential Flashcards',
                textAlign: TextAlign.center,
              ),
            ),
            IconButton(
              icon: const Icon(Icons.settings, color: Colors.white),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SettingsPage()),
                );
              },
            ),
          ],
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.only(left: widthPadding, right: widthPadding),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              expandedHeight: size.height * 0.40,
              flexibleSpace: FlexibleSpaceBar(
                background: Stack(
                  children: [
                    Center(
                      child: Padding(
                        padding: EdgeInsets.all(size.width * 0.10),
                        child: FadeInAnimation(
                          child: Image.asset('assets/images/logo.png'),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 20, // adjust as needed
                      right: 10, // adjust as needed
                      child: FloatingActionButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AddPage()),
                          );
                        },
                        backgroundColor: Theme.of(context)
                            .primaryColor, // Set the background color to the primary color
                        child: const Icon(Icons.add,
                            color: Colors.white, size: 30),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverGrid(
                delegate: SliverChildBuilderDelegate(
                  childCount: _topics.length,
                  (context, index) => TopicTile(topic: _topics[index]),
                ),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 6,
                  mainAxisSpacing: 6,
                )),
          ],
        ),
      ),
    );
  }
}
