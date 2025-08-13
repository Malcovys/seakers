
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:sneakers/core/styles/theme.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  final String title = 'Home';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text('You have pushed the button this many times:'),
        Text(
          '$_counter',
          style: h3Medium,
        ),
        FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ],
    );
  }
}
