
import 'package:sneakers/domain/repositories/user_repository.dart';

class LogoutUsecase {
  final UserRepository userRepository;

  LogoutUsecase(this.userRepository);

  Future<void> call() async {
    return await userRepository.deleteUser();
  }

}