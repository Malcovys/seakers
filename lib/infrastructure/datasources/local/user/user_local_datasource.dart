
import 'package:sneakers/infrastructure/models/user_model.dart';

abstract class UserLocalDatasource {
  Future<UserModel> getUser();
  Future<void> deleteUser();
  Future<UserModel> saveUser(UserModel user);
}