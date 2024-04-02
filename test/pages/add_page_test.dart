import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:secondly/models/connection.dart';
import 'package:secondly/pages/add_page.dart';

// Mock NavigatorObserver
class MockNavigatorObserver extends Mock implements NavigatorObserver {}

void main() {
  setUpAll(() async {
    await neonClient.open(); // Open the database
  });
  group('AddPage Widget Tests', () {
    // Create a mock observer
    final mockObserver = MockNavigatorObserver();

    testWidgets('AddPage Renders Correctly', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: const AddPage(),
        navigatorObservers: [mockObserver],
      ));

      // Verify that the HomePage is rendered
      expect(find.byType(AddPage), findsOneWidget);
    });

    testWidgets('Dropdown menu finder', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: const AddPage(),
        navigatorObservers: [mockObserver],
      ));

      // Find the dropdown menu
      expect(find.byKey(const Key('dropdownMenu')), findsOneWidget);
    });

    testWidgets('Tap on Submit Button', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: const AddPage(),
        navigatorObservers: [mockObserver],
      ));

      // Find the search button
      expect(find.byKey(const Key('submitButton')), findsOneWidget);
    });

    testWidgets('Locate Question Field', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: const AddPage(),
        navigatorObservers: [mockObserver],
      ));

      // Find the settings button
      expect(find.byKey(const Key('questionField')), findsOneWidget);
    });

    testWidgets('Locate Answer Field', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: const AddPage(),
        navigatorObservers: [mockObserver],
      ));

      // Find the add button
      expect(find.byKey(const Key('answerField')), findsOneWidget);
    });
  });

  tearDownAll(() async {
    await neonClient.close(); // Close the database
  });
}
