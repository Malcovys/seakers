part of './injection.dart';

void _registerBlocs() {
  getIt.registerFactory(
    () => UserBloc(getIt(), getIt(), getIt()),
  );
}