
import 'package:dartz/dartz.dart';
import 'package:sneakers/core/errors/failure.dart';
import 'package:sneakers/core/usecase/usecase.dart';
import 'package:sneakers/domain/repositories/user_repository.dart';

class LogoutUsecase extends UseCase<void, void> {
  final UserRepository userRepository;

  LogoutUsecase(this.userRepository);

  @override
  Future<Either<Failure, void>> call(void params) async {
    return await userRepository.deleteUser();
  }

}