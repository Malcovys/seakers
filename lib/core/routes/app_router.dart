
import 'package:auto_route/auto_route.dart';
import 'package:sneakers/core/routes/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {

  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      path: '/login',
      page:  LoginRoute.page,
      initial: true,
    ),
    AutoRoute(
      path: 'home',
      page: HomeRoute.page,
    )
  ];
}