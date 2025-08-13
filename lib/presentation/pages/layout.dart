import 'package:flutter/material.dart';
import 'package:sneakers/core/routes/app_router.dart';

class Layout extends StatelessWidget {
  Layout({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _appRouter.config(),
    );
  }
}