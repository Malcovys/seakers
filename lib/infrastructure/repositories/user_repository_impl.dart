import 'package:sneakers/domain/entities/user_entity.dart';
import 'package:sneakers/domain/repositories/user_repository.dart';
import 'package:sneakers/infrastructure/datasources/local/user_local_datasource.dart';
import 'package:sneakers/infrastructure/datasources/remote/user_remote_datasource.dart';
import 'package:sneakers/infrastructure/models/user_model.dart';

class UserRepositoryImpl extends UserRepository {
  final UserLocalDatasource localDatasource;
  final UserRemoteDatasource remoteDatasource;

  UserRepositoryImpl({
    required this.localDatasource, 
    required this.remoteDatasource
  });

  @override
  Future<void> deleteUser() async {
    await localDatasource.deleteUser();
  }

  @override
  Future<UserEntity> getUser(Map<String, String>? credentials) async {
    if (credentials != null && credentials.containsKey('email') && credentials.containsKey('password')) {
      return await getUserFromRemote(credentials);
    }
    return await _getUserFromLocal();
  }

  Future<UserEntity> getUserFromRemote(Map<String, String>? credentials) async {
    final email = credentials?['email']!;
    final password = credentials?['password']!;
    final user = await remoteDatasource.getUser(email!, password!);
    await localDatasource.saveUser(user);
    return user.toEntity();
  }

  Future<UserEntity> _getUserFromLocal() async {
    final user = await localDatasource.getUser();
    return user.toEntity();
  }
  

  @override
  Future<UserEntity> updateUser(UserEntity user) async {
    final updatedUser = await remoteDatasource.updateUser(UserModel.fromEntity(user));
    await localDatasource.saveUser(updatedUser);
    return updatedUser.toEntity();
  }
}