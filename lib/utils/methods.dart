import 'package:flutter/material.dart';
import 'package:secondly/pages/flashcards_page.dart';

loadSession({required BuildContext context}) {
  Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => const FlashcardsPage()));
}
