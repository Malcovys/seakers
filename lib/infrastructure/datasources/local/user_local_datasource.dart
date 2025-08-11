
import 'package:dartz/dartz.dart';
import 'package:sneakers/core/errors/failure.dart';
import 'package:sneakers/infrastructure/models/user_model.dart';

abstract class UserLocalDatasource {
  Future<Either<Failure, UserModel>> getUser();
  Future<Either<Failure, void>> deleteUser();
  Future<Either<Failure, UserModel>> saveUser(UserModel user);
}