import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:sneakers/core/styles/theme.dart';
import 'package:sneakers/presentation/widgets/item_card.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Hello Michael", style: h1,),
              SizedBox(height: 25),
              Text("All catalogue", style: h2Semibold,),
              SizedBox(height: 5),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 0.6,
                  children: <Widget>[
                    ItemCard(),
                    ItemCard(),
                    ItemCard(),
                    ItemCard(),
                    ItemCard(),
                  ],
                ),
              ),
            ],
        ),
        ),
      )
    );
  }
}
