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

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    getDropDownValues();
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
                      child: FadeInAnimation(
                        child: FittedBox(
                          fit: BoxFit.contain,
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

Future<void> getDropDownValues() async {
  List results = await neonClient.query(
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
