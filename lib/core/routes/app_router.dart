import 'package:auto_route/auto_route.dart';
import 'package:sneakers/core/routes/app_router.gr.dart';

// dart run build_runner build --delete-conflicting-outputs

@AutoRouterConfig()
class AppRouter extends RootStackRouter {

  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      path: '/login',
      page:  LoginRoute.page,
    ),
    AutoRoute(
      path: 'home',
      page: HomeRoute.page,
      initial: true,
    )
  ];
}