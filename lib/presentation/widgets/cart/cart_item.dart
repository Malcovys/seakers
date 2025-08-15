import 'package:flutter/material.dart';
import 'package:sneakers/core/styles/theme.dart';
import 'package:sneakers/presentation/widgets/cart/cart_item_popup_menu_actions.dart';
import 'package:sneakers/presentation/widgets/cart/item_couter.dart';

class CartItem extends StatefulWidget {
  const CartItem({
    super.key,
    required this.quantity,
    required this.onChangeQuantity,
    required this.onRemove,
  });

  final int quantity;
  final Function(int) onChangeQuantity;
  final Function() onRemove;

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,  // Full width container
      child: Row(
        spacing: 15,
        children: <Widget> [
          Container(
            width: 80,
            height: 88,
            alignment: Alignment.center,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: backgroundSecondary,
              borderRadius: BorderRadius.circular(24),
            ),
            child: Image.network(
              "https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/d4afc59f-5aa2-4f8c-9e09-9042d9f67315/AIR+JORDAN+8+RETRO.png",
              loadingBuilder: (context, child, progress) {
                return progress == null
                  ? child
                  : CircularProgressIndicator();
              },
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,  // Push items to edges
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 15),
                        Text("Ar108.20", style: h3Exetrabold),
                        Text("Air Jordan 8 Retro \"Aqua\"", style: h3Medium),
                      ],
                    ),
                    CartItemPopupMenuActions(
                      onRemove: widget.onRemove,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 2,
                  children: <Widget>[
                    Text("Men's Shoes", style: caption),
                    ItemCounter(
                      value: widget.quantity,
                      onChanged: widget.onChangeQuantity,
                    ),
                  ],
                )
              ],
            ),
          ),
        ]
      )
    );
  }
}