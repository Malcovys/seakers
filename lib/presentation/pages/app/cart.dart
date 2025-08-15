import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:sneakers/core/styles/theme.dart';
import 'package:sneakers/presentation/widgets/cart/cart_item.dart';

@RoutePage()
class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          "Cart",
          style: h3Bold,
        ),
        SizedBox(height: 25,),
        CartItem(
          quantity: 2,
          onChangeQuantity: (newQuantity) {},
        ),
      ],
    );
  }
}