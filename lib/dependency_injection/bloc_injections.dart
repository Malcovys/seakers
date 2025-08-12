part of './injection.dart';

void _registerBlocs() {
  getIt.registerFactory(
    () => UserBlock(getIt(), getIt(), getIt()),
  );
}