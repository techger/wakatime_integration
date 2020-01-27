import 'package:wakatime_integration/app/graphic_firebase/graphic_firebase_controller.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:wakatime_integration/app/graphic_firebase/graphic_firebase_page.dart';

class GraphicFirebaseModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => GraphicFirebaseController()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => GraphicFirebasePage();

  static Inject get to => Inject<GraphicFirebaseModule>.of();
}
