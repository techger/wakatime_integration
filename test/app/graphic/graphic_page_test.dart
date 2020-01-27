import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:wakatime_integration/app/graphic/graphic_page.dart';

main() {
  testWidgets('GraphicPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(GraphicPage(title: 'Graphic')));
    final titleFinder = find.text('Graphic');
    expect(titleFinder, findsOneWidget);
  });
}
