import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:secondly/pages/login_page.dart';
import 'package:secondly/models/connection.dart';

class MockNavigatorObserver extends Mock implements NavigatorObserver {}

void main() {
  setUpAll(() async {
    await neonClient.open(); // Open the database
  });
  group('LoginPage widget tests', () {
    NavigatorObserver navigatorObserver = MockNavigatorObserver();

    testWidgets('Login button test', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: const LoginPage(),
        navigatorObservers: [navigatorObserver],
      ));

      // Verify that the LoginPage is rendered
      expect(find.byType(LoginPage), findsOneWidget);

      // Find the login button
      expect(find.byKey(const Key('loginButton')), findsOneWidget);
    });

    testWidgets('Sign up button test', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: const LoginPage(),
        navigatorObservers: [navigatorObserver],
      ));

      // Verify that the LoginPage is rendered
      expect(find.byType(LoginPage), findsOneWidget);

      // Find the signup button
      expect(find.byKey(const Key('signupButton')), findsOneWidget);
    });
  });

  tearDownAll(() async {
    await neonClient.close(); // Close the database
  });
}
