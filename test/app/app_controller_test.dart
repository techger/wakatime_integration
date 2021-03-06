import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:wakatime_integration/app/app_controller.dart';
import 'package:wakatime_integration/app/app_module.dart';

void main() {
  initModule(AppModule());

  AppController app;

  setUp(() {
    app = AppModule.to.getBloc<AppController>();
  });

  group('AppController Test', () {
    test("First Test", () {
      expect(app, isInstanceOf<AppController>());
    });

    test("Set Value", () {
      expect(app.value, equals(0));
      app.increment();
      expect(app.value, equals(1));
    });
  });
}
