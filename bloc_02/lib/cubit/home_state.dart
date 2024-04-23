part of 'home_cubit.dart';

sealed class HomeState {}

class HomeLoading extends HomeState {
  HomeLoading();
}

class HomeSuccess extends HomeState {
  HomeSuccess({this.userModel});

  final UserModel? userModel;
}

class HomeError extends HomeState {
  HomeError({this.error});

  final String? error;
}
