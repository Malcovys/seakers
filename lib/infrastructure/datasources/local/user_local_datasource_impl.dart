import 'package:sneakers/core/sources/local/local_source.dart';
import 'package:sneakers/infrastructure/datasources/local/user_local_datasource.dart';
import 'package:sneakers/infrastructure/models/user_model.dart';

class UserLocalDatasourceImpl extends UserLocalDatasource {
  final LocalSource<UserModel> source;

  UserLocalDatasourceImpl(this.source);

  @override
  Future<void> deleteUser() async {
    await source.reset();
  }

  @override
  Future<UserModel?> getUser() async {
    return await source.retrieve();
  }

  @override
  Future<UserModel> saveUser(UserModel user) async {
    await source.store(user);
    return user;
  }
}