import 'package:flutter/material.dart';

const List<String> cartItemPopupMenuActions = [
  "remove",
];
class CartItemPopupMenuActions extends StatefulWidget {
  const CartItemPopupMenuActions({
    super.key,
    this.onRemove,
  });

  final Function()? onRemove;
  
  @override
  State<StatefulWidget> createState() => _CartItemPopupMenuActionState();
}

class _CartItemPopupMenuActionState extends State<CartItemPopupMenuActions> {

  void _onSelectAction(String action) {
    switch(action) {
      default: 
        if(widget.onRemove != null) {
          widget.onRemove!();
        }
    }
  }

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      onSelected: _onSelectAction,
      itemBuilder: (BuildContext context) {
        return cartItemPopupMenuActions.map<PopupMenuEntry<String>>((String value) {
          return PopupMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList();
      }
    );
  }
}