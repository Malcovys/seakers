import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class BasketPage extends StatelessWidget {
  const BasketPage({super.key});

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