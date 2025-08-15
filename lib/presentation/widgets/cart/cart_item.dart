
import 'package:flutter/material.dart';
import 'package:sneakers/core/styles/theme.dart';
import 'package:sneakers/presentation/widgets/cart/item_couter.dart';

class CartItem extends StatefulWidget {
  const CartItem({
    super.key,
    required this.quantity,
    required this.onChangeQuantity,
  });

  final int quantity;
  final Function(int) onChangeQuantity;

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Ar108.20",
              style: h3Exetrabold,
            ),
            Text(
              "Air Jordan 8 Retro \"Aqua\"",
              style: h3Medium,
            ),
            Row(
              children: <Widget>[
                Text(
                  "Men's Shoes",
                  style: caption,
                ),
                ItemCounter(
                  value: widget.quantity,
                  onChanged: widget.onChangeQuantity,
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}