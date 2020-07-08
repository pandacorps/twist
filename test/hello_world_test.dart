import 'package:flutter_test/flutter_test.dart';

import 'package:twist/main.dart';

void main() {
  testWidgets('Hello World smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    // Verify that our counter starts at 0.
    expect(find.text('Hello World!'), findsOneWidget);
  });
}
