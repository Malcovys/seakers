
import 'package:flutter/material.dart';
import 'package:sneakers/core/styles/theme.dart';
import 'package:sneakers/presentation/utils/serialize_amount.dart';
import 'package:sneakers/presentation/widgets/item_photo.dart';

class ItemCard extends StatelessWidget{
  const ItemCard({
    super.key,
    required this.label,
    required this.description,
    required this.price,
    required this.onPressed,
  });

  final String label, description;
  final double price;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(

      onTap: onPressed,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 5,
        children: <Widget>[

          // Item image
          Expanded(
            child: ItemPhoto(),
          ),

          Padding(
            padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Item price
                Text(
                  serializeAmount(price),
                  style: h3Exetrabold,
                ),

                // Item label
                Text(
                  label,
                  style: h3Medium,
                ),

                // Item description
                Text(
                  description,
                  style: caption,
                )
              ],
            ),
          )
        ]
      ),
    );
  }
  
}