
import 'package:flutter/material.dart';
import 'package:sneakers/core/styles/theme.dart';

class ItemPhoto extends StatelessWidget {
  const ItemPhoto({
    super.key,
    this.height,
    this.width,
  });

  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,

      // Size
      height: height,
      width: width,

      // Rounded image
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
      ),

      // Image
      child: Image.network(
        // Url
        "https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/d4afc59f-5aa2-4f8c-9e09-9042d9f67315/AIR+JORDAN+8+RETRO.png",
        
        // Loading
        loadingBuilder: (context, child, progress) {
          return progress == null
            ? child
            : CircularProgressIndicator(color: contentPrimary);
        },

         // Child fills parent's size
        fit: BoxFit.contain,
      ),
    );
  }
}