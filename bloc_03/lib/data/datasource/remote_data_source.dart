import 'dart:developer';

import 'package:bloc_03/data/model/user_model.dart';
import 'package:dio/dio.dart';

class RemoteDataSource {
  Future<UserModel?> register(UserModel userModel) async {
    try {
      final response = await Dio().post(
        'https://reqres.in/api/users',
        data: userModel.toJson(),
      );
      if (response.statusCode == 201) {
        return UserModel.fromJson(response.data);
      } else {
        return null;
      }
    } catch (e) {
      log(e.toString());
    }
    return null;
  }
}
