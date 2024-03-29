import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:secondly/models/connection.dart';
import 'package:secondly/pages/home_page.dart';

class MockNavigatorObserver extends Mock implements NavigatorObserver {}

void main() {
  setUpAll(() async {
    await neonClient.open(); // Open the database
  });
  group('HomePage widget tests', () {
    NavigatorObserver navigatorObserver = MockNavigatorObserver();

    testWidgets('AppBar buttons test', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: const HomePage(),
        navigatorObservers: [navigatorObserver],
      ));

      // Verify that the HomePage is rendered
      expect(find.byType(HomePage), findsOneWidget);

      // Tap on the search button
      await tester.tap(find.byIcon(Icons.search), warnIfMissed: false);
      await tester.pump();

      // Tap on the settings button
      await tester.tap(find.byIcon(Icons.settings), warnIfMissed: false);
      await tester.pump();
    });

    testWidgets('Add button test', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: const HomePage(),
        navigatorObservers: [navigatorObserver],
      ));

      // Verify that the HomePage is rendered
      expect(find.byType(HomePage), findsOneWidget);

      // Tap on the add button
      await tester.tap(find.byIcon(Icons.add), warnIfMissed: false);
      await tester.pump();
    });
  });
}
