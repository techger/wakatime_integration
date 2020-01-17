import 'dart:async';

import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';
import 'package:wakatime_integration/app/dio_wakatime/dio_wakatime.dart';
import 'package:wakatime_integration/app/models/user.dart';
import 'package:wakatime_integration/app/modules/home/home_module.dart';

part 'home_controller.g.dart';

class HomeController = _HomeBase with _$HomeController;

abstract class _HomeBase with Store {
  final DioWakatime dio = HomeModule.to.getDependency<DioWakatime>();

  @observable
  User user;

  @observable
  bool isLoading = false;

  @observable
  bool persistUserInBox = false;

  @observable
  bool appBarColor;

  @action
  Future<User> insertSecretApi(String _secretApi) async {
    if (_secretApi.isNotEmpty) {
      isLoading = true;
      final Response _response = await dio?.get('/users/current', _secretApi);
      isLoading = false;
      user = User.fromJson(_response.data['data']);
    }
    return user;
  }

  @action
  void userAnotherAccount() {
    user = null;
    persistUserInBox = false;
    appBarColor = false;
    appBarColorDefault();
  }

  @action
  void persistUser() {
    persistUserInBox = true;
    appBarColor = true;
    appBarColorDefault();
  }

  @action
  void appBarColorDefault() => Timer(Duration(seconds: 6), () {
    appBarColor = null;
  });

  @computed
  bool get isPersistUser => persistUserInBox;

  @computed
  bool get isSearchWakatimeUser => isLoading;

  @computed
  String get getMessageWelcome => "Seja bem vindo ${user.email}";
}
