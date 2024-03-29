import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:secondly/pages/login_page.dart';

class MockNavigatorObserver extends Mock implements NavigatorObserver {}

void main() {
  group('LoginPage widget tests', () {
    NavigatorObserver navigatorObserver = MockNavigatorObserver();

    testWidgets('Login button test', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: const LoginPage(),
        navigatorObservers: [navigatorObserver],
      ));

      // Verify that the LoginPage is rendered
      expect(find.byType(LoginPage), findsOneWidget);

      // Tap on the login button
      await tester.tap(find.widgetWithText(ElevatedButton, 'Login'));
      await tester.pump();
    });

    testWidgets('Sign up button test', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: const LoginPage(),
        navigatorObservers: [navigatorObserver],
      ));

      // Verify that the LoginPage is rendered
      expect(find.byType(LoginPage), findsOneWidget);

      // Tap on the sign up button
      await tester.tap(find.widgetWithText(ElevatedButton, 'Sign Up'));
      await tester.pump();
    });
  });
}
