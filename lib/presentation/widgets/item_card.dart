
import 'package:flutter/material.dart';
import 'package:sneakers/core/styles/theme.dart';
import 'package:sneakers/presentation/widgets/item_photo.dart';

class ItemCard extends StatelessWidget{
  const ItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("taped !!");
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: ItemPhoto(),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Ar349.99",
                  style: h3Exetrabold,
                ),
                Text(
                  "Air Jordan 8 Retro \"Aqua\"",
                  style: h3Medium,
                ),
                Text(
                  "Men's Shoes",
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