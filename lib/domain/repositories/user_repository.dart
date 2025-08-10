
import 'package:sneakers/domain/entities/user_entity.dart';

abstract class UserRepository {
  Future<UserEntity?> getUser(String? email, String? password);
  Future<UserEntity> updateUser(UserEntity user);
  Future<void> deleteUser();
}