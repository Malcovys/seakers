import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sneakers/core/routes/app_router.dart';
import 'package:sneakers/core/styles/theme.dart';
import 'package:sneakers/dependency_injection/injection.dart';
import 'package:sneakers/presentation/managers/user/user_bloc.dart';
import 'package:sneakers/presentation/managers/user/user_event.dart';

class AppLayout extends StatelessWidget {
  const AppLayout({super.key});

  @override
  Widget build(BuildContext context) {
    AppRouter appRouter = AppRouter();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: backgroundPrimary,
        body: BlocProvider(
          create: (context) => getIt<UserBloc>()..add(RetriveCurrentUserEvent()),
          child: MaterialApp.router(
              routerConfig: appRouter.config(),
          ),
        ),
      )
    );
  }
}