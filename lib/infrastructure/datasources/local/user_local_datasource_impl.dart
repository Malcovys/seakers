import 'package:sneakers/core/sources/local/local_source.dart';
import 'package:sneakers/infrastructure/datasources/local/user_local_datasource.dart';
import 'package:sneakers/infrastructure/models/user_model.dart';

class UserLocalDatasourceImpl extends UserLocalDatasource {
  final LocalSource source;
  final String key = "user";

  UserLocalDatasourceImpl(this.source);

  @override
  Future<void> deleteUser() async {
    await source.reset(key);
  }

  @override
  Future<UserModel> getUser() async {
    final json = await source.retrieve(key);
    return UserModel.fromJson(json!);
  } 

  @override
  Future<UserModel> saveUser(UserModel user) async {
    await source.store(key, user.toJson());
    return user;
  }
}