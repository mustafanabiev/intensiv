import 'package:bloc_03/core/enum/fetch_enum.dart';
import 'package:bloc_03/data/model/user_model.dart';
import 'package:equatable/equatable.dart';

class AuthState extends Equatable {
  const AuthState({
    this.status,
    this.userModel,
  });

  final FetchStatus? status;
  final UserModel? userModel;

  @override
  List<Object?> get props => [status, userModel];
}
