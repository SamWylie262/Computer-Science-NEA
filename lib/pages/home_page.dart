import 'package:flutter/material.dart';
import 'package:secondly/animations/fade_in_animation.dart';
import 'package:secondly/pages/add_page.dart';
import 'package:secondly/pages/browse_page.dart';
import 'package:secondly/pages/settings_page.dart';
import '../components/home_page/topic_tile.dart';
import 'package:secondly/pages/login_page.dart';
import 'package:secondly/models/connection.dart';

String dropdownValue1 = '';
String dropdownValue2 = '';
String dropdownValue3 = '';
String dropdownValue4 = '';
String dropdownValue5 = '';
String dropdownValue6 = '';
DateTime now = DateTime.now();

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // This function is called when the page is loaded
    super.initState();
    getDropDownValues();
  }

  Future<void> getDropDownValues() async {
    // This function gets the values of the dropdowns
    List results = await neonClient.query(
        // Get the values from the database
        query:
            "SELECT computing, english, geography, history, maths, science FROM users WHERE user_id = $finaluserid");
    dropdownValue1 = results[0][0].toString();
    if (dropdownValue1 == 'true') {
      dropdownValue1 = 'show';
    } else {
      dropdownValue1 = 'hide';
    }
    dropdownValue2 = results[0][1].toString();
    if (dropdownValue2 == 'true') {
      dropdownValue2 = 'show';
    } else {
      dropdownValue2 = 'hide';
    }
    dropdownValue3 = results[0][2].toString();
    if (dropdownValue3 == 'true') {
      dropdownValue3 = 'show';
    } else {
      dropdownValue3 = 'hide';
    }
    dropdownValue4 = results[0][3].toString();
    if (dropdownValue4 == 'true') {
      dropdownValue4 = 'show';
    } else {
      dropdownValue4 = 'hide';
    }
    dropdownValue5 = results[0][4].toString();
    if (dropdownValue5 == 'true') {
      dropdownValue5 = 'show';
    } else {
      dropdownValue5 = 'hide';
    }
    dropdownValue6 = results[0][5].toString();
    if (dropdownValue6 == 'true') {
      dropdownValue6 = 'show';
    } else {
      dropdownValue6 = 'hide';
    }
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
                bottomRight:
                    Radius.circular(30))), // Set the shape of the app bar
        toolbarHeight: size.height * 0.15,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              // This is the search button
              key: const Key('searchButton'),
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
                // This is the title of the app
                'GCSEPotential Flashcards',
                textAlign: TextAlign.center,
              ),
            ),
            IconButton(
              // This is the settings button
              key: const Key('settingsButton'),
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
                    Expanded(
                      child: Column(
                        children: [
                          Center(
                            child: FadeInAnimation(
                              child: Column(
                                children: [
                                  Image.asset('assets/images/logo.png'),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      // This is the add button
                      bottom: 20,
                      right: 10,
                      child: FloatingActionButton(
                        key: const Key('addButton'),
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
                // This is the grid of topics
                delegate: SliverChildBuilderDelegate(
                  childCount: topics.length,
                  (context, index) => TopicTile(topic: topics[index]),
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
