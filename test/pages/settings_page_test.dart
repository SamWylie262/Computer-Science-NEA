import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:secondly/models/connection.dart';
import 'package:secondly/pages/settings_page.dart';

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
        home: const SettingsPage(),
        navigatorObservers: [mockObserver],
      ));

      // Verify that the HomePage is rendered
      expect(find.byType(SettingsPage), findsOneWidget);
    });

    testWidgets('Dropdown menu finder', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: const SettingsPage(),
        navigatorObservers: [mockObserver],
      ));

      // Find the dropdown menu
      expect(find.byKey(const Key('settingsdropdownMenu')), findsOneWidget);
    });

    testWidgets('Tap on Apply Button', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: const SettingsPage(),
        navigatorObservers: [mockObserver],
      ));

      // Find the search button
      expect(find.byKey(const Key('applyButton')), findsOneWidget);
    });

    testWidgets('Tap on logout Button', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: const SettingsPage(),
        navigatorObservers: [mockObserver],
      ));

      // Find the search button
      expect(find.byKey(const Key('logoutButton')), findsOneWidget);
    });
  });

  tearDownAll(() async {
    await neonClient.close(); // Close the database
  });
}
