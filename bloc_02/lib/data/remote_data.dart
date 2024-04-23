import 'dart:developer';

import 'package:bloc_02/model/user_model.dart';
import 'package:dio/dio.dart';

class RemoteData {
  Future<UserModel?> getData() async {
    try {
      final dio = Dio();
      final response = await dio.get('https://reqres.in/api/users/2');
      if (response.statusCode == 200) {
        return UserModel.fromJson(response.data['data']);
      } else {
        log('error');
      }
    } catch (e) {
      log(e.toString());
    }
    return null;
  }
}
