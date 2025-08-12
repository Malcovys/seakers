
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sneakers/core/routes/app_router.gr.dart';
import 'package:sneakers/presentation/managers/user/user_bloc.dart';
import 'package:sneakers/presentation/managers/user/user_state.dart';

class AuthGuard extends AutoRouteGuard {

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    final context = router.navigatorKey.currentContext;
    if(context != null) {
      final userState = context.read<UserBloc>().state;
      if(userState.status == UserStatus.authenticated) {
        // User is authenticated, allow navigation
        resolver.next(true);
      } else {
        // User is not authenticated, redirect to login
        router.popAndPush(LoginRoute());
      }
    }
  }
}