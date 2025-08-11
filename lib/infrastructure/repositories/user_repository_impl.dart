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
  Future<void> deleteUser() async {
    localDatasource.deleteUser();
  }

  @override
  Future<UserEntity?> getUser({String? email, String? password}) async {
    if (email != null && email.isNotEmpty && password != null && password.isNotEmpty) {
      final user = await remoteDatasource.getUser(email, password);
      await localDatasource.saveUser(user);
      return user.toEntity();
    }

    final user = await localDatasource.getUser();
    if(user != null) {
      return user.toEntity();
    }

    return null;
  }

  @override
  Future<UserEntity> updateUser(UserEntity user) async {
    final user = await localDatasource.getUser();
    final updatedUser = await remoteDatasource.updateUser(user!);

    await localDatasource.saveUser(updatedUser);

    return updatedUser.toEntity();
  }
}