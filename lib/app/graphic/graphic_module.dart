import 'package:wakatime_integration/app/graphic/graphic_controller.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:wakatime_integration/app/graphic/graphic_page.dart';

class GraphicModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => GraphicController()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => GraphicPage();

  static Inject get to => Inject<GraphicModule>.of();
}
