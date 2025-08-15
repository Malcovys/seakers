
import 'package:flutter/material.dart';
import 'package:sneakers/core/styles/theme.dart';
import 'package:sneakers/presentation/widgets/cart/item_counter_button.dart';

class ItemCounter extends StatefulWidget {
  const ItemCounter({
    super.key,
    required this.value,
    this.onChanged,
  });

  final int value;
  final Function(int)? onChanged;

  @override
  State<ItemCounter> createState() => _ItemCouterState();
}

class _ItemCouterState extends State<ItemCounter>{
  late int counterValue;

  @override
  void initState() {
    counterValue = widget.value;
    super.initState();
  }

  void _callback(int newCount) {
    if (widget.onChanged != null) {
      widget.onChanged!(counterValue);
    }
  }

  void _incrementCount() {
    setState(() {
      counterValue++;
      _callback(counterValue);
    });
  }

  void _decrementCount() {
    setState(() {
      counterValue--;
      _callback(counterValue);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        ItemCouterButton(
          onPressed: _decrementCount,
          variant: ItemCounterButtonVariant.remove
        ),
        Text(
          "$counterValue",
          style: h3Medium,
        ),
        ItemCouterButton(
          onPressed: _incrementCount,
          variant: ItemCounterButtonVariant.add,
        ),
      ],
    );
  }
} 