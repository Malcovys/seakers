import 'package:sneakers/domain/entities/user_entity.dart';

abstract class UserRepository {
  Future<UserEntity> getUser(Map<String, String>? params);
  Future<UserEntity> updateUser(UserEntity user);
  Future<void> deleteUser();
}