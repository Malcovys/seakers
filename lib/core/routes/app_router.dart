import 'package:auto_route/auto_route.dart';
import 'package:sneakers/core/routes/app_router.gr.dart';
// import 'package:sneakers/core/routes/guards/auth_guard.dart';

// dart run build_runner build --delete-conflicting-outputs

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route') // Replace Screen ou Page from RoutePage widget -> Route
class AppRouter extends RootStackRouter {

  @override
  RouteType get defaultRouteType => RouteType.material(); // Navigation transition type used by all of routes

  @override
  List<AutoRoute> get routes => [
    AutoRoute(path: '/login', page:  LoginRoute.page, initial: true),
    AutoRoute(
      path: '/app', 
      page: AppRoute.page,
      children: [
        AutoRoute(path: '', page: HomeRoute.page,),
        AutoRoute(path: 'browse', page: BrowseRoute.page),
        AutoRoute(path: 'cart', page: CartRoute.page),
        AutoRoute(path: 'profile', page: ProfileRoute.page),
      ]),
  ];

  @override
  List<AutoRouteGuard> get guards => [
    
  ];
}