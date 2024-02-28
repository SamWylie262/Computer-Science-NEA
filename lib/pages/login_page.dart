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
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> _login() async {
    String properResult = "jjosrengjnfdmvrteroiwjf,m";
    final String username = _usernameController.text;
    final String password = _passwordController.text;
    List results = await neonClient.query(
        query: "SELECT password_hash FROM users WHERE username = '$username'");
    if (results.isNotEmpty) {
      properResult =
          results.toString().substring(2, results.toString().length - 2);
    }
    if (properResult == password) {
      isValidUser = true;
      List results = await neonClient.query(
          query: "SELECT user_id FROM users WHERE username = '$username'");
      finaluserid = results[0][0];
      await getDeckInfo();
      print(topics);
    }
    if (isValidUser) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage(key: UniqueKey())),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            content: Text('Please enter a valid login and password')),
      );
    }
  }

  Future<void> _signup() async {
    isValidUser = true;
    final String username = _usernameController.text;
    final String password = _passwordController.text;
    dynamic results =
        await neonClient.query(query: "SELECT username FROM users");
    if (results.contains(username)) {
      isValidUser = false;
    }
    if (isValidUser) {
      if (password.length < 7) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
              content: Text('Password must be at least 7 characters long')),
        );
        return;
      }
      await neonClient.query(
        query:
            "INSERT INTO users (username, password_hash, computing, english, geography, history, maths, science) VALUES ('$username', '$password', true, true, true, true, true, true)",
      );
      List results = await neonClient.query(
          query: "SELECT user_id FROM users WHERE username = '$username'");
      finaluserid = results[0][0];
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: FadeInAnimation(
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: Image.asset('assets/images/logo.png'),
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
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: _login,
                style: ElevatedButton.styleFrom(backgroundColor: kbutton),
                child:
                    const Text('Login', style: TextStyle(color: Colors.black)),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: _signup,
                style: ElevatedButton.styleFrom(backgroundColor: kbutton),
                child: const Text('Sign Up',
                    style: TextStyle(color: Colors.black)),
              ),
            ],
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
  }
  int topicIndex = 0;
  List results = await neonClient.query(
      query:
          "SELECT computing, english, geography, history, maths, science FROM users WHERE user_id = $finaluserid");
  List<String> newList = [];
  for (var list in results) {
    for (var element in list) {
      if (element == true) {
        newList.add(topics[topicIndex]);
      }
      topicIndex = topicIndex + 1;
    }
  }
  topics = newList;
  return topics;
}
