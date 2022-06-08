import 'dart:developer';

import 'package:get/get.dart';

import '../myhistories_model.dart';

class MyHistoriesProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return MyHistories.fromJson(map);
      if (map is List) {
        return map.map((item) => MyHistories.fromJson(item)).toList();
      }
    };
    httpClient.baseUrl = 'test.api.intivestudio.com/api';
    httpClient.addAuthenticator((request) {
      const token =
          "2y\$10\$Th0uw2vi0kBxCNxLDVakFeUU6DSWhmjQbvMZCH7fSMt9okLpoEgaS";
      request.headers['Authorization'] = "Bearer $token";
      return request;
    });
  }

  Future<MyHistories?> getSingleMyhistories(int id) async {
    final response = await get('mutation/$id');
    return response.body;
  }

  Future<MyHistories?> getAllMyhistories() async {
    final response = await get('mutation/');
    inspect(response);
    return response.body;
  }

  Future<Response<MyHistories>> updateMyhistories(
          MyHistories myhistories) async =>
      await post('mutation/${myhistories.id}', myhistories);

  Future<Response<MyHistories>> storeMyhistories(
          MyHistories myhistories) async =>
      await post('mutation/', myhistories);

  Future<Response> destroyMyhistories(int id) async =>
      await delete('mutation/$id');
}
