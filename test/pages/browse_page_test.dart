import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:secondly/pages/browse_page.dart';

void main() {
  testWidgets('TextField test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      const MaterialApp(home: BrowsePage(key: Key('browse_page'))),
    );

    // Find the TextField widget.
    final textFieldFinder = find.byType(TextField);

    // Verify that the TextField widget is present.
    expect(textFieldFinder, findsOneWidget);

    // Enter text into the TextField.
    await tester.enterText(textFieldFinder, 'Test input');

    // Verify that the entered text is correct.
    expect(find.text('Test input'), findsOneWidget);
  });
}
