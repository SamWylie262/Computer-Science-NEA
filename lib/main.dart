import 'package:flutter/material.dart';
import 'package:secondly/configs/themes.dart';
import 'package:secondly/models/connection.dart';
import 'package:secondly/pages/login_page.dart';

void main() async {
  await neonClient.open();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "GCSEPotential",
      theme: appTheme,
      home: const LoginPage(),
    );
  }
}
