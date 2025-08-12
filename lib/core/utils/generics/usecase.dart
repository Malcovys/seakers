/// T : Value returned by the usecase
///
/// P : Parameters passed to the usecase
abstract class UseCase<T, P> {
  Future<T> call(P? params);
}