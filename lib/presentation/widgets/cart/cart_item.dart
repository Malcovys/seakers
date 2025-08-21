import 'package:flutter/material.dart';
import 'package:sneakers/core/styles/theme.dart';
import 'package:sneakers/presentation/utils/serialize_amount.dart';
import 'package:sneakers/presentation/widgets/cart/cart_item_popup_menu_actions.dart';
import 'package:sneakers/presentation/widgets/cart/item_couter.dart';
import 'package:sneakers/presentation/widgets/item_photo.dart';

class CartItem extends StatefulWidget {
  const CartItem({
    super.key,
    required this.price,
    required this.label,
    required this.description,
    required this.quantity,
    required this.onChangeQuantity,
    required this.onRemove,
    this.onPressed,
  });

  final double price;
  final String label;
  final String description;
  final int quantity;
  final void Function(int) onChangeQuantity;
  final void Function() onRemove;
  final void Function()? onPressed;

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {

  @override
  Widget build(BuildContext context) {
    return TextButton(
      // Press
      onPressed: widget.onPressed,
      
      // Style
      style: ButtonStyle(
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        )
      ),

      // Content
      child: Row(
        spacing: 16,
        children: <Widget> [
          // Image
          ItemPhoto(
            height: 90,
            width: 80,
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
                        Text(
                          serializeAmount(widget.price), 
                          style: h3Exetrabold.copyWith(color: contentPrimary)
                        ),
                        Text(
                          widget.label,
                          style: h3Medium.copyWith(color: contentPrimary)
                        ),
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
                    Text(
                      widget.description, 
                      style: caption.copyWith(color: contentPrimary)
                    ),
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