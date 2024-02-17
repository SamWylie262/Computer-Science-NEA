import 'package:flutter/material.dart';
import 'package:secondly/pages/home_page.dart';
import 'package:secondly/pages/login_page.dart';
import 'package:secondly/models/connection.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
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
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Maximum Interval:'),
                SizedBox(
                  width: 150,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextField(),
                  ),
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Daily Review Limit:'),
                SizedBox(
                  width: 150,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextField(),
                  ),
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Daily new card review limit:'),
                SizedBox(
                  width: 150,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextField(),
                  ),
                ),
              ],
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Text('Computing:'),
                const Spacer(),
                ButtonTheme(
                  alignedDropdown: true,
                  child: DropdownButton<String>(
                    value: dropdownValue1,
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue1 = newValue!;
                      });
                    },
                    items: <String>['true', 'false']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: SizedBox(
                          width: 200,
                          child: Text(value),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Text('English:'),
                const Spacer(),
                ButtonTheme(
                  alignedDropdown: true,
                  child: DropdownButton<String>(
                    value: dropdownValue2,
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue2 = newValue!;
                      });
                    },
                    items: <String>['true', 'false']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: SizedBox(
                          width: 200,
                          child: Text(value),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Text('Geography:'),
                const Spacer(),
                ButtonTheme(
                  alignedDropdown: true,
                  child: DropdownButton<String>(
                    value: dropdownValue3,
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue3 = newValue!;
                      });
                    },
                    items: <String>['true', 'false']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: SizedBox(
                          width: 200,
                          child: Text(value),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Text('History:'),
                const Spacer(),
                ButtonTheme(
                  alignedDropdown: true,
                  child: DropdownButton<String>(
                    value: dropdownValue4,
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue4 = newValue!;
                      });
                    },
                    items: <String>['true', 'false']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: SizedBox(
                          width: 200,
                          child: Text(value),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Text('Maths:'),
                const Spacer(),
                ButtonTheme(
                  alignedDropdown: true,
                  child: DropdownButton<String>(
                    value: dropdownValue5,
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue5 = newValue!;
                      });
                    },
                    items: <String>['true', 'false']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: SizedBox(
                          width: 200,
                          child: Text(value),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Text('Science:'),
                const Spacer(),
                ButtonTheme(
                  alignedDropdown: true,
                  child: DropdownButton<String>(
                    value: dropdownValue6,
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue6 = newValue!;
                      });
                    },
                    items: <String>['true', 'false']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: SizedBox(
                          width: 200,
                          child: Text(value),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 150, // Set the width of the button
                  height: 60, // Set the height of the button
                  child: ElevatedButton(
                    onPressed: () async {
                      bool booldropdownValue1;
                      bool booldropdownValue2;
                      bool booldropdownValue3;
                      bool booldropdownValue4;
                      bool booldropdownValue5;
                      bool booldropdownValue6;
                      if (dropdownValue1 == 'true') {
                        booldropdownValue1 = true;
                      } else {
                        booldropdownValue1 = false;
                      }
                      if (dropdownValue2 == 'true') {
                        booldropdownValue2 = true;
                      } else {
                        booldropdownValue2 = false;
                      }
                      if (dropdownValue3 == 'true') {
                        booldropdownValue3 = true;
                      } else {
                        booldropdownValue3 = false;
                      }
                      if (dropdownValue4 == 'true') {
                        booldropdownValue4 = true;
                      } else {
                        booldropdownValue4 = false;
                      }
                      if (dropdownValue5 == 'true') {
                        booldropdownValue5 = true;
                      } else {
                        booldropdownValue5 = false;
                      }
                      if (dropdownValue6 == 'true') {
                        booldropdownValue6 = true;
                      } else {
                        booldropdownValue6 = false;
                      }
                      applySettings(
                          booldropdownValue1,
                          booldropdownValue2,
                          booldropdownValue3,
                          booldropdownValue4,
                          booldropdownValue5,
                          booldropdownValue6);
                      await getDeckInfo();
                      // Add your action here
                    }, // Add your button text here
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    child: const Text('Apply'),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: ElevatedButton(
                child: const Text('Logout'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void applySettings(
    bool booldropdownValue1,
    bool booldropdownValue2,
    bool booldropdownValue3,
    bool booldropdownValue4,
    bool booldropdownValue5,
    bool booldropdownValue6) async {
  await neonClient.query(
    query:
        "UPDATE users SET computing = $booldropdownValue1, english = $booldropdownValue2, geography = $booldropdownValue3, history = $booldropdownValue4, maths = $booldropdownValue5, science = $booldropdownValue6 WHERE user_id = $finaluserid",
  );
}
