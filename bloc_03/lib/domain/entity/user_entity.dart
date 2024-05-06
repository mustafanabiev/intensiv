import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  const UserEntity({
    required this.name,
    required this.job,
    this.id,
    this.createdAt,
  });

  final String name;
  final String job;
  final String? id;
  final String? createdAt;

  @override
  List<Object?> get props => [name, job, id, createdAt];
}
