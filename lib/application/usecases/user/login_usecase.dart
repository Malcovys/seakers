
import 'package:sneakers/domain/entities/user_entity.dart';
import 'package:sneakers/domain/repositories/user_repository.dart';

class LoginUsecase {
  final UserRepository userRepository;

  LoginUsecase(this.userRepository);

  Future<UserEntity> call(String email, String password) async {
    final user = await userRepository.getUser(email: email, password: password);
    if(user != null) {
      return user;
    }
    throw Exception("User not found.");
  }

}