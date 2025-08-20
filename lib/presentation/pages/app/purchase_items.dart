import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class PurchaseItemsPage extends StatelessWidget {
  const PurchaseItemsPage({
    super.key,
    required this.purchaseId,
  });

  final int purchaseId;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Text("Purchase items")
      ],
    );
  }

}