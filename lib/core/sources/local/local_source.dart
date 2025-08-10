

abstract class LocalSource<T> {
  Future<void> store(T model);
  Future<void> reset();
  Future<T?> retrieve();
}