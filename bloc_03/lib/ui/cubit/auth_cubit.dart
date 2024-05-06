import 'dart:developer';

import 'package:bloc_03/core/enum/fetch_enum.dart';
import 'package:bloc_03/data/datasource/remote_data_source.dart';
import 'package:bloc_03/data/model/user_model.dart';
import 'package:bloc_03/ui/cubit/auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this.remoteDataSource) : super(const AuthState());

  final RemoteDataSource remoteDataSource;

  Future<void> registerCubit(UserModel userModel) async {
    try {
      emit(const AuthState(status: FetchStatus.loading));
      final response = await remoteDataSource.register(userModel);
      if (response != null) {
        emit(AuthState(status: FetchStatus.success, userModel: response));
      } else {
        emit(const AuthState(status: FetchStatus.error));
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
