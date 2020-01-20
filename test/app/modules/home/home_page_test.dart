import 'package:bloc_pattern/bloc_pattern_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wakatime_integration/app/modules/home/home_module.dart';

main() {
  HomeModule homeModule;
  String raisedButtonText;

  setUp(() {
    homeModule = HomeModule();
    raisedButtonText = "Salvar Secret API";
  });

  group("UI Test HomePage", () {
    testWidgets('HomePage has title', (WidgetTester tester) async {
      await tester.pumpWidget(buildTestableWidget(homeModule));
      final titleFinder = find.text('Home');
      expect(titleFinder, findsOneWidget);
    });

    testWidgets('HomePage has field', (WidgetTester tester) async {
      await tester.pumpWidget(buildTestableWidget(homeModule));
      final fieldFinder = find.text("Secret API");
      expect(fieldFinder, findsOneWidget);
    });

    testWidgets('HomePage has button', (WidgetTester tester) async {
      await tester.pumpWidget(buildTestableWidget(homeModule));
      final buttonFinder = find.text(raisedButtonText);
      expect(buttonFinder, findsOneWidget);
    });

    testWidgets('HomePage SearchUser When Tapped', (WidgetTester tester) async {
      await tester.pumpWidget(buildTestableWidget(homeModule));
      final buttonFinder = find.widgetWithText(RaisedButton, raisedButtonText);
      final fieldFinder = find.widgetWithText(TextField, "Secret API");

      await tester.enterText(
        fieldFinder,
        "cf3b3ef9-64dc-419f-8a2f-a255c7c5d1b6",
      );

      await tester.press(buttonFinder);

//      expect(find.widgetWithText(Observer, "joaowitorfelipe2@gmail.com"), findsOneWidget);
    });
  });
}
