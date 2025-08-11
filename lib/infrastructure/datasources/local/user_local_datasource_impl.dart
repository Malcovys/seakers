import 'package:dartz/dartz.dart';
import 'package:sneakers/core/errors/failure.dart';
import 'package:sneakers/core/sources/local/local_source.dart';
import 'package:sneakers/infrastructure/datasources/local/user_local_datasource.dart';
import 'package:sneakers/infrastructure/models/user_model.dart';

class UserLocalDatasourceImpl extends UserLocalDatasource {
  final LocalSource source;
  final String key = "user";

  UserLocalDatasourceImpl(this.source);

  @override
  Future<Either<Failure, void>> deleteUser() async {
    await source.reset(key);
    return Right(null);
  }

  @override
  Future<Either<Failure, UserModel>> getUser() async {
    final json = await source.retrieve(key);
    if(json == null) {
      return Left(CacheFailure("Current user not found."));
    }
    return Right(UserModel.fromJson(json));
  } 

  @override
  Future<Either<Failure, UserModel>> saveUser(UserModel user) async {
    await source.store(key, user.toJson());
    return Right(user);
  }
}