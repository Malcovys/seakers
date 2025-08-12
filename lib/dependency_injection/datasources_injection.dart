part of './injection.dart';

void _registerDatasources() {
  _registerRemoteSourceServce();
  _registerLocalService();

  getIt.registerLazySingleton<UserLocalDatasource>(() => UserLocalDatasourceImpl(getIt()));
  getIt.registerLazySingleton<UserRemoteDatasource>(() => UserRemoteDatasourceImpl(getIt()));
}

void _registerLocalService() {
  getIt.registerLazySingletonAsync<LocalSource>(() async { 
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return Future.value(LocalSourceImpl(prefs));
  });
}

void _registerRemoteSourceServce() {
  getIt.registerLazySingleton<Dio>(() => Dio(
    BaseOptions(
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json',
      },
      // baseUrl: 'https://api.example.com', // optional
      // connectTimeout: const Duration(seconds: 10),
      // receiveTimeout: const Duration(seconds: 10),
    ),
  ));
  getIt.registerLazySingleton<RemoteSource>(() => RemoteSourceImpl(getIt()));
}