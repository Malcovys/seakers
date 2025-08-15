
import 'package:flutter/material.dart';
import 'package:sneakers/core/styles/theme.dart';

enum ItemCounterButtonVariant {
  add,
  remove,
}

class ItemCouterButton extends StatelessWidget {
  const ItemCouterButton({
    super.key,
    required this.onPressed,
    required this.variant,
  });

  final Function() onPressed;
  final ItemCounterButtonVariant variant; 
  
  Icon _selectIcon() {
    if(variant == ItemCounterButtonVariant.remove) {
      return Icon(
        Icons.remove,
        color: contentSecondary,
        size: 10,
      );
    } else {
      return Icon(
        Icons.add,
        color: contentOnColorInverse,
        size: 10,
      );
    }
  }

  Color _selectButtonBackground() {
    if(variant == ItemCounterButtonVariant.remove) {
      return backgroundSecondary;
    } else {
      return backgroundAccent;
    }
  }

  @override
  Widget build(BuildContext context) {
    return IconButton.filled(
      onPressed: onPressed, 
      icon: _selectIcon(),

      style: ButtonStyle(
        fixedSize: WidgetStatePropertyAll<Size>(Size(24,24)),
        backgroundColor: WidgetStatePropertyAll(_selectButtonBackground()),
        shape: WidgetStatePropertyAll<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(8)
          )
        )
      ),
    );
  }
}