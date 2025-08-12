import 'package:sneakers/core/utils/generics/usecase.dart';
import 'package:sneakers/domain/repositories/user_repository.dart';

class LogoutUsecase extends UseCase<void, void> {
  final UserRepository userRepository;

  LogoutUsecase(this.userRepository);

  @override
  Future<void> call(void params) async {
    return await userRepository.deleteUser();
  }
}