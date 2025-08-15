import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:sneakers/core/styles/theme.dart';
import 'package:sneakers/presentation/widgets/buttons.dart';
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
        Text("Cart", style: h3Bold),
        SizedBox(height: 25),
        Expanded(
          child: ListView(
            addAutomaticKeepAlives: false,
            children: <Widget>[
              CartItem(
                quantity: 2,
                onChangeQuantity: (newQuantity) {},
                onRemove: () {},
              ),
              CartItem(
                quantity: 2,
                onChangeQuantity: (newQuantity) {},
                onRemove: () {},
              ),
            ],
          )
        ),
        Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                color: contentSecondary,
                width: 1.05
              )
            )
          ),
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Total", style: body2Bold),
                    Text("Ar695.07", style: body2Bold)
                  ],
                ),
                SizedBox(height: 15),
                SizedBox(
                  width: double.infinity, // Makes child expand to full width
                  child: AccentButton(
                    label: "Buy",
                    onPressed: () {},
                  ),
                )
              ],
            ),
          )
        )
      ],
    );
  }
}