import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:textwidgt/main.dart';

void main() {
  testWidgets('name widget test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    var textField = find.byType(TextField);
    expect(textField, findsOneWidget);
    await tester.enterText(textField, 'niroshan');
    expect(find.text('niroshan'), findsOneWidget);

    var button = find.text('Submit');
    expect(button, findsOneWidget);
    await tester.tap(button);
    await tester.pump();
    expect(find.text('niroshan'), findsOneWidget);
  });
}
