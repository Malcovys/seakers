import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sneakers/core/routes/app_router.gr.dart';
import 'package:sneakers/core/styles/theme.dart';
import 'package:sneakers/presentation/widgets/profile/purchase.dart';
import 'package:sneakers/presentation/widgets/profile/user.dart';

@RoutePage()
class ProfileHomePage extends StatefulWidget {
  const ProfileHomePage({super.key});

  @override
  State<StatefulWidget> createState() => _ProfileHomePageState();
}

class _ProfileHomePageState extends State<ProfileHomePage> {

  void _openPurchase(int id) {
    context.router.push(PurchaseRoute(purchaseId: id));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        /// Header
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Profile", style: h3Bold),
          ],
        ),

        const SizedBox(height: 24),

        /// User infos
        User(
          username: "Michael",
          email: "michael@gemail.com",
          wallet: 24295.00,
          onPressedCreditWallet: () {},
        ),

        const SizedBox(height: 24),

        // Purchases section
        Text(
          "Purchases",
          style: h2Semibold,
        ),
        const SizedBox(height: 14),
        Expanded(
          child: ListView(
            children: <Widget>[
              Purchase(
                onPressed: () => _openPurchase(1),
                amount: 150.00, 
                date: DateTime.now()
              ),
              Purchase(
                onPressed: () => _openPurchase(2),
                amount: 375.50, 
                date: DateTime.now().subtract(const Duration(days: 1))
              ),
              Purchase(
                onPressed: () => _openPurchase(3),
                amount: 210.25, 
                date: DateTime.now().subtract(const Duration(days: 2))
              ),
              // Add more purchases as needed
            ],
          ),
        ),
      ],
    );
  }
}