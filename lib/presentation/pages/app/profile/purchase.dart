import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sneakers/core/styles/theme.dart';
import 'package:sneakers/presentation/widgets/profile/purchase_item.dart';

@RoutePage()
class PurchasePage extends StatefulWidget {
  const PurchasePage({
    super.key,
    required this.purchaseId,
  });

  final int purchaseId;

  @override
  State<StatefulWidget> createState() => _PurchaseState();
}

class _PurchaseState extends State<PurchasePage> {

  void _onPressBackButton() {
    context.router.pop();
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 24,
      children: <Widget>[

        // Header
        Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: IconButton(
                onPressed: _onPressBackButton,
                icon: const Icon(Icons.arrow_back_ios),
              ),
            ),
            Center(
              child: Text("Purchase items", style: h3Bold)
            ),
          ],
        ),

        // Resume
        Column(
          children: <Widget>[
            Text(
              "Today at 11:10AM", 
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold)
            ),
            Text(
              "Total : Ar10,000.0",
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w600),
            )
          ],
        ),

        // Purchases
        Expanded(
          child: ListView(
            children: <Widget>[
              PurchaseItem(
                price: 10000.0,
                label: "Sneakers",
                description: "A pair of running sneakers",
                quantity: 1,
                onPressed: () {},
              )
            ],
          )
        )
      ],
    );
  }
}