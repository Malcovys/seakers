
import 'package:sneakers/domain/entities/user_entity.dart';
import 'package:sneakers/domain/repositories/user_repository.dart';

class RetriveCurrentUserUsecase {
  final UserRepository userRepository;

  RetriveCurrentUserUsecase(this.userRepository);

  Future<UserEntity> call() async {
    final currentUser = await userRepository.getUser();
    if(currentUser != null) {
      return currentUser;
    }
    throw Exception("Not current user found.");
  }
}
