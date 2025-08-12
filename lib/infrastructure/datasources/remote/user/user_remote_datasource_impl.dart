import 'package:sneakers/core/sources/remote/remote_source.dart';
import 'package:sneakers/infrastructure/datasources/remote/user/user_remote_datasource.dart';
import 'package:sneakers/infrastructure/models/user_model.dart';

class UserRemoteDatasourceImpl extends UserRemoteDatasource {
  final RemoteSource source;

  UserRemoteDatasourceImpl(this.source);
  
  @override
  Future<UserModel> getUser(String email, String password) {
    // TODO: implement getUser
    throw UnimplementedError();
  }

  @override
  Future<UserModel> updateUser(UserModel user) {
    // TODO: implement updateUser
    throw UnimplementedError();
  }

}