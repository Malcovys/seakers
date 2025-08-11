import 'package:dartz/dartz.dart';
import 'package:sneakers/core/errors/failure.dart';


/// T : Value returned by the usecase
///
/// P : Parameters passed to the usecase
abstract class UseCase<T, P> {
  Future<Either<Failure, T>> call(P? params);
}

// user for streams
abstract class StreamUsecase<T, P> {
  Stream<Either<Failure, T?>> call(P params);
}
