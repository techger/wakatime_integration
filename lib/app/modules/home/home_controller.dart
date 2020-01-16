import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';
import 'package:wakatime_integration/app/dio_wakatime/dio_wakatime.dart';
import 'package:wakatime_integration/app/modules/home/home_module.dart';

part 'home_controller.g.dart';

class HomeController = _HomeBase with _$HomeController;

abstract class _HomeBase with Store {
  final DioWakatime dio = HomeModule.to.getDependency<DioWakatime>();

  @observable
  String email = "";

  @action
  Future<String> insertSecretApi(String _secretApi) async {
    if (_secretApi.isNotEmpty) {
      final Response _response = await dio.get('/users/current', _secretApi);
      email = _response.data['data']['email'];
    }
    return "";
  }

  @computed
  String get getUser => email;
}
