import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:wakatime_integration/app/graphic/graphic_controller.dart';
import 'package:wakatime_integration/app/graphic/graphic_module.dart';

void main() {
  initModule(GraphicModule());

  GraphicController graphic;

  setUp(() {
    graphic = GraphicModule.to.get<GraphicController>();
  });

  group('GraphicController Test', () {
    test("First Test", () {
      expect(graphic, isInstanceOf<GraphicController>());
    });

    test("Set Value", () {
      expect(graphic.value, equals(0));
      graphic.increment();
      expect(graphic.value, equals(1));
    });
  });
}
