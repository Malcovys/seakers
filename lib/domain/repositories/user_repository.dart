import 'package:dartz/dartz.dart';
import 'package:sneakers/core/errors/failure.dart';
import 'package:sneakers/domain/entities/user_entity.dart';

abstract class UserRepository {
  Future<Either<Failure, UserEntity>> getUser(Map<String, String>? params);
  Future<Either<Failure, UserEntity>> updateUser(UserEntity user);
  Future<Either<Failure, void>> deleteUser();
}