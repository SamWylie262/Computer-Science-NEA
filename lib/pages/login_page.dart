// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:secondly/pages/home_page.dart';
import 'package:secondly/models/connection.dart';

int finaluserid = 0;
bool isValidUser = false;

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> _login() async {
    final String username = _usernameController.text;
    final String password = _passwordController.text;
    List results = await neonClient.query(
        query: "SELECT password_hash FROM users WHERE username = '$username'");
    String properResult =
        results.toString().substring(2, results.toString().length - 2);
    if (properResult == password) {
      isValidUser = true;
      List results = await neonClient.query(
          query: "SELECT user_id FROM users WHERE username = '$username'");
      finaluserid = results[0][0];
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
    String properResult =
        results.toString().substring(2, results.toString().length - 2);
    if (results.contains(username)) {
      isValidUser = false;
    }
    for (var sublist in results) {
      for (var element in sublist) {
        if (element == username) {
          isValidUser = false;
          break;
        }
      }
    }
    if (isValidUser) {
      await neonClient.query(
        query:
            "INSERT INTO users (username, password_hash) VALUES ('$username', '$password')",
      );
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                labelText: 'Username',
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Password',
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _login,
              child: const Text('Login'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: _signup,
              child: const Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}
