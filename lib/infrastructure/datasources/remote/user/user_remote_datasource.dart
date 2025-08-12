
import 'package:sneakers/infrastructure/models/user_model.dart';

abstract class UserRemoteDatasource {
  Future<UserModel> getUser(String email, String password);
  Future<UserModel> updateUser(UserModel user);
}