
import 'package:flutter/material.dart';
import 'package:sneakers/core/styles/theme.dart';

class AccentButton extends StatelessWidget {
  const AccentButton({
    super.key, 
    required this.label, 
    this.onPressed,
  });

  final String label;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        foregroundColor: contentOnColorInverse,
        textStyle: body1,
        backgroundColor: backgroundAccent,
        padding: EdgeInsetsGeometry.fromLTRB(10, 16, 10, 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(12)
        )
      ),
      onPressed: onPressed,
      child: Text(label),
    );
  }
  
}