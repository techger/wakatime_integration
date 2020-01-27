import 'package:wakatime_integration/app/settings/settings_controller.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:wakatime_integration/app/settings/settings_page.dart';

class SettingsModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => SettingsController()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => SettingsPage();

  static Inject get to => Inject<SettingsModule>.of();
}
