import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:sneakers/core/styles/theme.dart';
import 'package:sneakers/presentation/widgets/accent_button.dart';
import 'package:sneakers/presentation/widgets/cart/cart_item.dart';

@RoutePage()
class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {

  void _onBuy() {

  }

  void _onChangeItemQuantity(int itemId, int newQuantity) {

  }

  void _onRemoveItem(int itemId) {

  }
  
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
                label: "Air Jordan 8 Retro Aqua",
                description: "Men's Shoes",
                price: 180.20,
                quantity: 2,
                onChangeQuantity: (newQuantity) => _onChangeItemQuantity(1, newQuantity),
                onRemove: () => _onRemoveItem(1),
                onPressed: () {},
              ),
              CartItem(
                label: "Air Jordan 8 Retro Aqua",
                description: "Men's Shoes",
                price: 180.20,
                quantity: 2,
                onChangeQuantity: (newQuantity) => _onChangeItemQuantity(2, newQuantity),
                onRemove: () => _onRemoveItem(2),
                onPressed: () {},
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
                    onPressed: _onBuy,
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