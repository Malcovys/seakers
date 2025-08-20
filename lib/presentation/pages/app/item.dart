
import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';

@RoutePage()
class ItemPage extends StatelessWidget {
  const ItemPage({
    super.key,
    required this.itemId
  });

  final int itemId;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Text("Details")
      ],
    );
  }
}