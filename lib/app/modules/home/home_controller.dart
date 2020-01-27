import 'dart:async';

import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wakatime_integration/app/app_module.dart';
import 'package:wakatime_integration/app/dio_wakatime/dio_wakatime.dart';
import 'package:wakatime_integration/app/db_hive/db_hive.dart';
import 'package:wakatime_integration/app/models/user.dart';
import 'package:wakatime_integration/app/modules/home/home_module.dart';

part 'home_controller.g.dart';

class HomeController = _HomeBase with _$HomeController;

abstract class _HomeBase with Store {
  final DioWakatime dio = HomeModule.to.getDependency<DioWakatime>();
  final DbHive dbHive = AppModule.to.get<DbHive>();

  @observable
  User user;

  @observable
  User loggedUser;

  @observable
  bool isLoadingLoggedUser = false;

  @observable
  bool isLoading = false;

  @observable
  bool persistUserInBox = false;

  @observable
  bool appBarColor;

  @observable
  int positionPageView = 0;

  @action
  void onPageChanged(int index) => positionPageView = index;

  @action
  Future<User> insertSecretApi(String _secretApi) async {
    if (_secretApi.isNotEmpty) {
      isLoading = true;
      final Response _response = await dio?.get('/users/current', _secretApi);
      isLoading = false;
      _response.data['data']['apiKey'] = _secretApi;
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
  void appBarColorDefault() =>
      Timer(Duration(seconds: 6), () {
        appBarColor = null;
      });

  @action
  Future<void> launchSecretApiKey() async {
    final String urlWakaTime = "https://wakatime.com/settings/account";
    if (await canLaunch(urlWakaTime)) {
      await launch(urlWakaTime);
    } else {
      throw "Não é possível acessar a URL";
    }
  }

  @action
  Future saveUserInHive() async {
    if (user != null) {
      persistUserInBox = true;
      appBarColor = true;
      appBarColorDefault();
      loggedUser = await dbHive.saveUser(user);
    }
  }

  @action
  Future<void> checkIfLoggedUser() async {
    isLoadingLoggedUser = true;
    loggedUser = await dbHive.getUser();
    if (loggedUser != null) {
      persistUserInBox = true;
    }
    isLoadingLoggedUser = false;
  }

  @action
  Future<void> logout() async {
    isLoading = true;
    await dbHive.deleteUser();
    loggedUser = null;
    user = null;
    persistUserInBox = false;
    isLoading = false;
  }

  @computed
  bool get isPersistUser => persistUserInBox;

  @computed
  bool get isSearchWakatimeUser => isLoading;

  @computed
  String get getMessageWelcome => "Seja bem vindo ${loggedUser.email} ao DoutTime";

  @computed
  int get getCurrentIndexOnPageView => positionPageView;

}
