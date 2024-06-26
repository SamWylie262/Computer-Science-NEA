import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:secondly/models/connection.dart';
import 'package:secondly/pages/home_page.dart';

// Mock NavigatorObserver
class MockNavigatorObserver extends Mock implements NavigatorObserver {}

void main() {
  setUpAll(() async {
    await neonClient.open(); // Open the database
  });
  group('HomePage Widget Tests', () {
    // Create a mock observer
    final mockObserver = MockNavigatorObserver();

    testWidgets('HomePage Renders Correctly', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: const HomePage(),
        navigatorObservers: [mockObserver],
      ));

      // Verify that the HomePage is rendered
      expect(find.byType(HomePage), findsOneWidget);
    });

    testWidgets('Tap on Search Button Navigates to BrowsePage',
        (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: const HomePage(),
        navigatorObservers: [mockObserver],
      ));

      // Find the search button
      expect(find.byKey(const Key('searchButton')), findsOneWidget);
    });

    testWidgets('Tap on Settings Button Navigates to SettingsPage',
        (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: const HomePage(),
        navigatorObservers: [mockObserver],
      ));

      // Find the settings button
      expect(find.byKey(const Key('settingsPage')), findsOneWidget);
    });

    testWidgets('Tap on Add Button Navigates to AddPage',
        (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: const HomePage(),
        navigatorObservers: [mockObserver],
      ));

      // Find the add button
      expect(find.byKey(const Key('addButton')), findsOneWidget);
    });
  });

  tearDownAll(() async {
    await neonClient.close(); // Close the database
  });
}
