import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:secondly/models/connection.dart';
import 'package:secondly/pages/flashcards_page.dart';

// Mock NavigatorObserver
class MockNavigatorObserver extends Mock implements NavigatorObserver {}

void main() {
  setUpAll(() async {
    await neonClient.open(); // Open the database
  });
  group('FlashcardsPage Widget Tests', () {
    // Create a mock observer
    final mockObserver = MockNavigatorObserver();

    testWidgets('Flashcards Page Renders Correctly',
        (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: const FlashcardsPage(),
        navigatorObservers: [mockObserver],
      ));

      // Verify that the Flashcards Page is rendered
      expect(find.byType(FlashcardsPage), findsOneWidget);
    });

    testWidgets('Daily review button finder', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: const FlashcardsPage(),
        navigatorObservers: [mockObserver],
      ));

      // Find the daily review button
      expect(find.byKey(const Key('dailyReviewButton')), findsOneWidget);
    });

    testWidgets('Custom review button finder', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: const FlashcardsPage(),
        navigatorObservers: [mockObserver],
      ));

      // Find the custom review button
      expect(find.byKey(const Key('customReviewButton')), findsOneWidget);
    });
  });

  tearDownAll(() async {
    await neonClient.close(); // Close the database
  });
}
