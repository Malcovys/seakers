
import 'package:flutter/material.dart';
import 'package:sneakers/core/styles/theme.dart';

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
            child: Container(
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