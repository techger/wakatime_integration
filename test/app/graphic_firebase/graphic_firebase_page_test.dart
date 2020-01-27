import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:wakatime_integration/app/graphic_firebase/graphic_firebase_page.dart';

main() {
  testWidgets('GraphicFirebasePage has title', (WidgetTester tester) async {
    await tester.pumpWidget(
        buildTestableWidget(GraphicFirebasePage(title: 'GraphicFirebase')));
    final titleFinder = find.text('GraphicFirebase');
    expect(titleFinder, findsOneWidget);
  });
}
