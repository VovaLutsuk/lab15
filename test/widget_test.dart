import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:lab15/main.dart';

void main() {
  testWidgets('FloatingActionButton has correct icon', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.widgetWithIcon(FloatingActionButton, Icons.person), findsOneWidget);
  });

  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('0'), findsOneWidget);
    expect(find.text('7'), findsNothing);

    await tester.tap(find.byIcon(Icons.person));
    await tester.pump();

    expect(find.text('0'), findsNothing);
    expect(find.text('7'), findsOneWidget);
  });

  test('Function y = 10 / (x^2 - 4) calculates correctly', () {
    final calculator = FunctionCalculator();

    expect(calculator.calculate(3), closeTo(10 / 5, 0.0001));
    expect(calculator.calculate(5), closeTo(10 / 21, 0.0001));

    expect(() => calculator.calculate(2), throwsArgumentError);
    expect(() => calculator.calculate(-2), throwsArgumentError);
  });

  testWidgets('Home page displays correct title text', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.text("CS-31: Andrij's updated Flutter App"), findsOneWidget);
  });
}
