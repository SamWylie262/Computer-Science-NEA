// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:secondly/pages/home_page.dart';
import 'package:secondly/models/connection.dart';

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
    if (results.contains(password)) {
      isValidUser = true;
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
            const TextField(
              decoration: InputDecoration(
                labelText: 'Username',
              ),
            ),
            const SizedBox(height: 16),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
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
              onPressed: () {},
              child: const Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}
