import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:wakatime_integration/app/settings/settings_controller.dart';
import 'package:wakatime_integration/app/settings/settings_module.dart';

void main() {
  initModule(SettingsModule());

  SettingsController settings;

  setUp(() {
    settings = SettingsModule.to.get<SettingsController>();
  });

  group('SettingsController Test', () {
    test("First Test", () {
      expect(settings, isInstanceOf<SettingsController>());
    });

    test("Set Value", () {
      expect(settings.value, equals(0));
      settings.increment();
      expect(settings.value, equals(1));
    });
  });
}
