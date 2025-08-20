

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sneakers/core/routes/app_router.gr.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoRouter.declarative(
      routes:(handler) => [
        ProfileHomeRoute(),
        () {
          int purchaseId = context.router.current.params.getInt("purchaseId");
          print("pruchase id: $purchaseId");
          return PurchaseRoute(purchaseId: purchaseId);
        }()
      ],
    );
  }
}