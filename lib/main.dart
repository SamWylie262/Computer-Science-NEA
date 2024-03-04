import 'package:flutter/material.dart';
import 'package:secondly/configs/themes.dart';
import 'package:secondly/models/connection.dart';
import 'package:secondly/pages/login_page.dart';

void main() async {
  await neonClient.open(); // Open the database
  runApp(const MyApp()); // Run the app
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Hide the debug banner
      title: "GCSEPotential", // Title of the app
      theme: appTheme, // Theme of the app
      home: const LoginPage(), // Home page of the app
    );
  }
}
