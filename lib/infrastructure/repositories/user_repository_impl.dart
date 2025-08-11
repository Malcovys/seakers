import 'package:dartz/dartz.dart';
import 'package:sneakers/core/errors/failure.dart';
import 'package:sneakers/domain/entities/user_entity.dart';
import 'package:sneakers/domain/repositories/user_repository.dart';
import 'package:sneakers/infrastructure/datasources/local/user_local_datasource.dart';
import 'package:sneakers/infrastructure/datasources/remote/user_remote_datasource.dart';

class UserRepositoryImpl extends UserRepository {
  final UserLocalDatasource localDatasource;
  final UserRemoteDatasource remoteDatasource;

  UserRepositoryImpl({
    required this.localDatasource, 
    required this.remoteDatasource
  });

  @override
  Future<Either<Failure, void>> deleteUser() async {
    return await localDatasource.deleteUser();
  }

  @override
  Future<Either<Failure, UserEntity>> getUser(Map<String, String>? credentials) async {
      if (credentials != null && credentials.containsKey('email') && credentials.containsKey('password')) {
        final email = credentials['email']!;
        final password = credentials['password']!;
        final user = await remoteDatasource.getUser(email, password);
        await localDatasource.saveUser(user);
        return Right(user.toEntity());
      }

      final res = await localDatasource.getUser();
      return res.fold(
        (failure) => Left(failure),
        (user) => Right(user.toEntity()),
      );
  }

  @override
  Future<Either<Failure, UserEntity>> updateUser(UserEntity user) async {
    final res = await localDatasource.getUser();
    return await res.fold(
      (failure) async => Left(failure), 
      (localUser) async {
        final updatedUser = await remoteDatasource.updateUser(localUser);
        await localDatasource.saveUser(updatedUser);

        return Right(updatedUser.toEntity());
      },
    );
  }
}