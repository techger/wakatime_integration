import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:wakatime_integration/app/modules/home/home_controller.dart';
import 'package:wakatime_integration/app/modules/home/home_module.dart';

void main() {
  initModule(HomeModule());

  HomeController home;

  setUp(() {
    home = HomeModule.to.getBloc<HomeController>();
  });

  group('HomeController Test', () {
    test("First Test", () {
      expect(home, isInstanceOf<HomeController>());
    });

    test("insertSecretApi", () async {
      expect(await home.insertSecretApi("cf3b3ef9-64dc-419f-8a2f-a255c7c5d1b6"), isInstanceOf<String>());
    });
  });
}
