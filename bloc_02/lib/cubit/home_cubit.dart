import 'dart:developer';

import 'package:bloc_02/data/remote_data.dart';
import 'package:bloc_02/model/user_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit({
    required this.remoteData,
  }) : super(HomeLoading());

  final RemoteData remoteData;

  Future<void> getData() async {
    try {
      final response = await remoteData.getData();
      if (response != null) {
        emit(HomeSuccess(userModel: response));
      } else {
        emit(HomeError(error: 'response is null'));
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
