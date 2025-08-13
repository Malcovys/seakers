import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sneakers/application/usecases/user/login_usecase.dart';
import 'package:sneakers/application/usecases/user/logout_usecase.dart';
import 'package:sneakers/application/usecases/user/retrive_current_user_usecase.dart';
import 'package:sneakers/core/sources/local/local_source.dart';
import 'package:sneakers/core/sources/local/local_source_impl.dart';
import 'package:sneakers/core/sources/remote/remote_source.dart';
import 'package:sneakers/core/sources/remote/remote_source_impl.dart';
import 'package:sneakers/domain/repositories/user_repository.dart';
import 'package:sneakers/infrastructure/datasources/local/user/user_local_datasource.dart';
import 'package:sneakers/infrastructure/datasources/local/user/user_local_datasource_impl.dart';
import 'package:sneakers/infrastructure/datasources/remote/user/user_remote_datasource.dart';
import 'package:sneakers/infrastructure/datasources/remote/user/user_remote_datasource_impl.dart';
import 'package:sneakers/infrastructure/repositories/user_repository_impl.dart';
import 'package:sneakers/presentation/managers/user/user_bloc.dart';

part 'bloc_injections.dart';
part 'usecases_injection.dart';
part 'repositories_injection.dart';
part 'datasources_injection.dart';

final getIt = GetIt.instance;

Future<void> setupInjections() async {
  _registerBlocs();
  await _registerDatasources();
  _registerRepositories();
  _registerUsecases();
}