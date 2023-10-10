import 'package:flutter/material.dart';
import 'package:secondly/configs/constants.dart';

final appTheme = ThemeData(
    primaryColor: kBlue,
    textTheme: const TextTheme(
        bodyMedium: TextStyle(
      color: Colors.white,
      fontSize: 18,
    )),
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      color: kBlue,
    ),
    scaffoldBackgroundColor: kBlue);
