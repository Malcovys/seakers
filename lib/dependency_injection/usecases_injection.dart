part of './injection.dart';

void _registerUsecases() {
  _registerUserUsecases();
}

void _registerUserUsecases () {
  getIt.registerLazySingleton<LoginUsecase>(() => LoginUsecase(getIt()));
  getIt.registerLazySingleton<LogoutUsecase>(() => LogoutUsecase(getIt()));
  getIt.registerLazySingleton<RetriveCurrentUserUsecase>(() => RetriveCurrentUserUsecase(getIt()));
}