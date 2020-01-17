import 'dart:convert';

import 'package:dio/dio.dart';

class DioWakatime {
  Dio initDio(String _secretApiKey) {
    final _secretApiKeyBytes = utf8.encode(_secretApiKey);
    final _secretApiKey64 = base64.encode(_secretApiKeyBytes);

    return Dio(
      BaseOptions(
        baseUrl: 'https://wakatime.com/api/v1',
        headers: {"Authorization": "Basic $_secretApiKey64"},
      ),
    );
  }

  Future<Response> get(String path, String _secretApiKey) async {
    final Dio dio = initDio(_secretApiKey);
    final Response _response = await dio?.get(path);
    return _response;
  }
}
