import 'package:flutter/material.dart';
import 'package:sneakers/core/styles/theme.dart';

class CreditButton extends StatelessWidget {
  const CreditButton({
    super.key,
    required this.onPressed
  });

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed, 
      icon: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          spacing: 10,
          children: <Widget>[
            Icon(Icons.add_card),
            Text(
              "Credit", 
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: contentOnColorInverse
              )
            )
          ],
        ),
      ),
      color: contentOnColorInverse,
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(backgroundAccent),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        )
      ),
    );
  }
}