// ignore_for_file: use_build_context_synchronously, avoid_print

import 'package:flutter/material.dart';
import 'package:secondly/animations/fade_in_animation.dart';
import 'package:secondly/configs/constants.dart';
import 'package:secondly/pages/home_page.dart';
import 'package:secondly/models/connection.dart';
import '../data/words.dart';

int finaluserid = 0;
bool isValidUser = false;
List<String> topics = [];

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController =
      TextEditingController(); // Controller for the username
  final TextEditingController _passwordController =
      TextEditingController(); // Controller for the password

  Future<void> _login() async {
    String properResult =
        "jnsfjfngjsdjlcvndgjlsbndfjdcnbjtgrnd"; // Random string that acts kind of like a password
    final String username = _usernameController.text;
    final String password = _passwordController.text;
    List results = await neonClient.query(
        query:
            "SELECT password_hash FROM users WHERE username = '$username'"); // Query to get the password from the database
    if (results.isNotEmpty) {
      properResult =
          results.toString().substring(2, results.toString().length - 2);
    } // If the result is not empty, set properResult to the password from the database
    if (properResult == password) {
      isValidUser = true;
      List results = await neonClient.query(
          query: "SELECT user_id FROM users WHERE username = '$username'");
      finaluserid = results[0][
          0]; // Set the user id to the user id from the database to be used throughout the program
      await getDeckInfo();
    }
    if (isValidUser) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage(key: UniqueKey())),
      ); // If the user is valid, push the user to the home page
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            content: Text('Please enter a valid login and password')),
      ); // If the user is not valid, show a snackbar
    }
  }

  Future<void> _signup() async {
    isValidUser = true;
    final String username = _usernameController.text;
    final String password = _passwordController.text;
    dynamic results = await neonClient.query(
        query:
            "SELECT username FROM users"); // Query to get all the usernames from the database
    for (var sublist in results) {
      for (var element in sublist) {
        if (element == username) {
          isValidUser = false;
          break;
        }
      }
    } // Check if the username already exists
    if (isValidUser) {
      if (password.length < 7) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
              content: Text('Password must be at least 7 characters long')),
        );
        return;
      } // If the password is less than 7 characters, show a snackbar
      else if (username.length > 30 || password.length > 254) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
              content: Text(
                  'Username must be max 30 characters, and password must be max 254 characters long')),
        );
        return;
      } // If the username is greater than 30 characters, or password is greater than 254 characters show a snackbar
      await neonClient.query(
        query:
            "INSERT INTO users (username, password_hash, computing, english, geography, history, maths, science) VALUES ('$username', '$password', true, true, true, true, true, true)",
      ); // Insert the new user into the database
      List results = await neonClient.query(
          query: "SELECT user_id FROM users WHERE username = '$username'");
      finaluserid = results[0][
          0]; // Set the user id to the user id from the database to be used throughout the program
      await getDeckInfo();
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage(key: UniqueKey())),
      );
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Welcome to the app!')),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Username already exists')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: FadeInAnimation(
                    child: Column(
                      children: [
                        Image.asset('assets/images/logo.png'), // Logo
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: _usernameController,
                  decoration: const InputDecoration(
                    labelText: 'Username',
                    border: OutlineInputBorder(),
                  ),
                ), // Username text field
                const SizedBox(height: 16),
                TextField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                ), // Password text field
                const SizedBox(height: 16),
                ElevatedButton(
                  key: const Key('loginButton'),
                  onPressed: _login, // Login button
                  style: ElevatedButton.styleFrom(backgroundColor: kbutton),
                  child: const Text('Login',
                      style: TextStyle(color: Colors.black)),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  // Sign up button
                  key: const Key('signupButton'),
                  onPressed: _signup,
                  style: ElevatedButton.styleFrom(backgroundColor: kbutton),
                  child: const Text('Sign Up',
                      style: TextStyle(color: Colors.black)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

getDeckInfo() async {
  for (var t in words) {
    if (!topics.contains(t.topic)) {
      topics.add(t.topic);
    }
    topics.sort();
  } // Get all the topics from the words file
  int topicIndex = 0;
  List results = await neonClient.query(
      query:
          "SELECT computing, english, geography, history, maths, science FROM users WHERE user_id = $finaluserid"); // Query to get the topics the user has selected
  List<String> newList = [];
  for (var list in results) {
    for (var element in list) {
      if (element == true) {
        newList.add(topics[topicIndex]);
      }
      topicIndex = topicIndex + 1;
    }
  } // Add the topics the user has selected to a new list
  topics = newList;
  return topics;
}
