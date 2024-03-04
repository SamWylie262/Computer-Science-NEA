import 'package:flutter/material.dart';
import 'package:secondly/configs/constants.dart';

final appTheme = ThemeData(
    primaryColor: kbutton, // Primary color of the app
    textTheme: const TextTheme(
        bodyMedium: TextStyle(
      color: Colors.white, // Color of the text
      fontSize: 18, // Size of the text
    )),
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(
        fontSize: 20, // Size of the appbar text
        fontWeight: FontWeight.bold,
      ),
      color: kbutton, // Color of the app bar
    ),
    scaffoldBackgroundColor: klogo);
