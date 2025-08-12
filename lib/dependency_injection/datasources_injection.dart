part of './injection.dart';

void _registerDatasources() {
  _registerLocalDatasources();
  _registerRemoteDatasources();
}

void _registerLocalDatasources() {
  getIt.registerLazySingleton<UserLocalDatasource>(() => UserLocalDatasourceImpl(getIt()));
}

void _registerRemoteDatasources() {
  getIt.registerLazySingleton<RemoteSource>(() => RemoteSourceImpl(getIt()));
}