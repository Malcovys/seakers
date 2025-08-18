import 'package:flutter/material.dart';
import 'package:sneakers/core/styles/theme.dart';
import 'package:sneakers/presentation/utils/serialize_amount.dart';
import 'package:sneakers/presentation/utils/serialize_date.dart';

class Purchase extends StatelessWidget {
  const Purchase({
    super.key,
    required this.onPressed,
    required this.amount,
    required this.date,
  });

  final void Function() onPressed;
  final double amount;
  final DateTime date;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        )
      ),
      child: Row(
        spacing: 14,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: backgroundSecondary,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Icon(Icons.arrow_outward, color: contentPrimary)
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  spacing: 8,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      serializeAmount(amount), 
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: contentPrimary
                      ),
                    ),
                    Text(
                      serializeDate(date),
                      style: TextStyle(
                        fontSize: 12,
                        color: contentSecondary
                      ),
                    )
                  ],
                ),
                IconButton(
                  onPressed: () {}, 
                  icon: Icon(Icons.more_vert)
                )
              ],
            )
          )
        ],
      )
    );
  }
}