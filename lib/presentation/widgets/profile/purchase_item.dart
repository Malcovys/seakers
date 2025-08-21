import 'package:flutter/material.dart';
import 'package:sneakers/core/styles/theme.dart';
import 'package:sneakers/presentation/utils/serialize_amount.dart';
import 'package:sneakers/presentation/widgets/item_photo.dart';

class PurchaseItem  extends StatelessWidget {
  const PurchaseItem({
    super.key,
    required this.price,
    required this.label,
    required this.description,
    required this.quantity,
    this.onPressed,
  });

  final double price;
  final String label;
  final String description;
  final int quantity;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      // Press
      onPressed: onPressed,
      
      // Style
      style: ButtonStyle(
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        )
      ),

      child: Row(
        spacing: 16,

        children: <Widget> [
          // Image
          ItemPhoto(
            height: 90,
            width: 80,
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "${serializeAmount(price)} x $quantity",
                style: h3Exetrabold.copyWith(color: contentPrimary)
              ),
              Text(
                label,
                style: h3Medium.copyWith(color: contentPrimary)
              ),
              Text(
                description,
                style: caption.copyWith(color: contentPrimary)
              )
            ],
          )
        ]
      ),
    );
  }
}