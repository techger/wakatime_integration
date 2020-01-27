import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:wakatime_integration/app/graphic_firebase/graphic_firebase_controller.dart';
import 'package:wakatime_integration/app/graphic_firebase/graphic_firebase_module.dart';

void main() {
  initModule(GraphicFirebaseModule());

  GraphicFirebaseController graphicfirebase;

  setUp(() {
    graphicfirebase = GraphicFirebaseModule.to.get<GraphicFirebaseController>();
  });

  group('GraphicFirebaseController Test', () {
    test("First Test", () {
      expect(graphicfirebase, isInstanceOf<GraphicFirebaseController>());
    });

    test("Set Value", () {
      expect(graphicfirebase.value, equals(0));
      graphicfirebase.increment();
      expect(graphicfirebase.value, equals(1));
    });
  });
}
