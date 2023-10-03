import 'package:flutter/material.dart';
import 'package:secondly/configs/themes.dart';
import 'package:secondly/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "GCSEPotential",
      theme: appTheme,
      home: const HomePage(),
    );
  }
}
