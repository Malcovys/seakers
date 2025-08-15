import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text("Basket"),
      ],
    );
  }
}