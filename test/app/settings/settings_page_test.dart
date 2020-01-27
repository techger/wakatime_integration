import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:wakatime_integration/app/settings/settings_page.dart';

main() {
  testWidgets('SettingsPage has title', (WidgetTester tester) async {
    await tester
        .pumpWidget(buildTestableWidget(SettingsPage(title: 'Settings')));
    final titleFinder = find.text('Settings');
    expect(titleFinder, findsOneWidget);
  });
}
