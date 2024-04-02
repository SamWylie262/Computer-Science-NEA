import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:secondly/models/connection.dart';
import 'package:secondly/pages/daily_review_page.dart';

// Mock NavigatorObserver
class MockNavigatorObserver extends Mock implements NavigatorObserver {}

void main() {
  setUpAll(() async {
    await neonClient.open(); // Open the database
  });

  group('BrowsePage Widget Tests', () {
    // Create a mock observer
    final mockObserver = MockNavigatorObserver();

    testWidgets('DailyReviewPage Renders Correctly',
        (WidgetTester tester) async {
      await tester.runAsync(() async {
        await tester.pumpWidget(MaterialApp(
          home: const DailyReviewPage(),
          navigatorObservers: [mockObserver],
        ));

        // Verify that the BrowsePage is rendered
        expect(find.byType(DailyReviewPage), findsOneWidget);
      });
    });
  });

  tearDownAll(() async {
    // Close the database and cancel any pending timers
    await neonClient.close();
  });
}
