import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:twist/screens/project_list/project_list_screen.dart';

void main() {
  testWidgets('Renders zero state', (WidgetTester tester) async {
    await tester.pumpWidget(MediaQuery(
        data: const MediaQueryData(),
        child: MaterialApp(home: ProjectListScreen())));

    expect(find.text('Welcome!'), findsOneWidget);
  });
}
