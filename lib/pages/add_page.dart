import 'package:flutter/material.dart';
import 'package:secondly/pages/home_page.dart';
import 'package:flutter_neon/flutter_neon.dart';

class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  @override
  Widget build(BuildContext context) {
    String dropdownValue = 'English';

    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Cards'),
        centerTitle: true,
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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: <Widget>[
            Text('Deck:'),
            Spacer(),
            ButtonTheme(
              alignedDropdown: true,
              child: DropdownButton<String>(
                value: dropdownValue,
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
                items: <String>['English', 'Maths', 'Geography', 'History']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Container(
                      width: 200,
                      child: Text(value),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() async {
  final neonClient = FlutterNeon(
      connectionUrl:
          "postgresql://SamWylie262:************@ep-cold-bird-78274763.eu-central-1.aws.neon.tech/potentialdb?sslmode=require",
      pooling: true);
  await neonClient.open();
}
