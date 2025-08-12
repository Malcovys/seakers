import 'package:sneakers/core/utils/generics/usecase.dart';
import 'package:sneakers/domain/entities/user_entity.dart';
import 'package:sneakers/domain/repositories/user_repository.dart';

class RetriveCurrentUserUsecase extends UseCase<UserEntity, void>{
  final UserRepository userRepository;

  RetriveCurrentUserUsecase(this.userRepository);

  @override
  Future<UserEntity> call(void params) async {
    return await userRepository.getUser(null);
  }
}
