import 'package:sneakers/core/utils/generics/usecase.dart';
import 'package:sneakers/domain/entities/user_entity.dart';
import 'package:sneakers/domain/repositories/user_repository.dart';

class LoginUsecase extends UseCase<UserEntity, Map<String, String>> {
  final UserRepository userRepository;

  LoginUsecase(this.userRepository);
  
  @override
  Future<UserEntity> call(Map<String, String>? params) async {
    return await userRepository.getUser(params);
  }
}