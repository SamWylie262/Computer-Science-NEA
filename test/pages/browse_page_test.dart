import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:secondly/models/connection.dart';
import 'package:secondly/pages/browse_page.dart';

// Mock NavigatorObserver
class MockNavigatorObserver extends Mock implements NavigatorObserver {}

void main() {
  setUpAll(() async {
    await neonClient.open(); // Open the database
  });

  group('BrowsePage Widget Tests', () {
    // Create a mock observer
    final mockObserver = MockNavigatorObserver();

    testWidgets('BrowsePage Renders Correctly', (WidgetTester tester) async {
      await tester.runAsync(() async {
        await tester.pumpWidget(MaterialApp(
          home: const BrowsePage(),
          navigatorObservers: [mockObserver],
        ));

        // Verify that the BrowsePage is rendered
        expect(find.byType(BrowsePage), findsOneWidget);
      });
    });

    testWidgets('Search bar finder', (WidgetTester tester) async {
      await tester.runAsync(() async {
        await tester.pumpWidget(MaterialApp(
          home: const BrowsePage(),
          navigatorObservers: [mockObserver],
        ));

        // Find the search bar
        expect(find.byKey(const Key('searchBar')), findsOneWidget);
      });
    });

    testWidgets('Tap on filter Button', (WidgetTester tester) async {
      await tester.runAsync(() async {
        await tester.pumpWidget(MaterialApp(
          home: const BrowsePage(),
          navigatorObservers: [mockObserver],
        ));

        // Find the filter button
        expect(find.byKey(const Key('filterByDeck')), findsOneWidget);
      });
    });
  });

  tearDownAll(() async {
    // Close the database and cancel any pending timers
    await neonClient.close();
  });
}
