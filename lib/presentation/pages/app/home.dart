import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sneakers/core/routes/app_router.gr.dart';
import 'package:sneakers/core/styles/theme.dart';
import 'package:sneakers/presentation/widgets/item_card.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void _onPressedItem(BuildContext context, int id) {
    context.router.push(ItemDetailRoute(itemId: id));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("Hello Michael", style: h1,),
        SizedBox(height: 25),
        Text("All catalogue", style: h2Semibold,),
        SizedBox(height: 5),
        Expanded(
          child: GridView.builder(

            // Contenair style
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 0.6,
            ),
            
            // Items
            itemCount: items.length,
            itemBuilder: (context, index) {
              return ItemCard(
                label: items[index]["label"], 
                description: items[index]["description"], 
                price: items[index]["price"], 
                onPressed: () => _onPressedItem(context, items[index]["id"])
                // imageUrl: () => items[index]["imageUrl"]
              );
            }
          ),
        ),
      ],
    );
  }
}

const List<Map<String, dynamic>> items = [
  {
    "id": 1,
    "label": "Air Jordan 8 Retro \"Aqua\"",
    "price": 190.00,
    "description": "Men's Shoes",
    "imageUrl": "assets/images/air_jordan_8_aqua.jpg",
  },
  {
    "id": 2,
    "label": "Nike Air Force 1 '07",
    "price": 110.00,
    "description": "Men's Shoes",
    "imageUrl": "assets/images/nike_air_force_1.jpg",
  },
  {
    "id": 3,
    "label": "Adidas Ultraboost 22",
    "price": 180.00,
    "description": "Running Shoes",
    "imageUrl": "assets/images/adidas_ultraboost.jpg",
  },
  {
    "id": 4,
    "label": "New Balance 574 Core",
    "price": 84.99,
    "description": "Lifestyle Shoes",
    "imageUrl": "assets/images/new_balance_574.jpg",
  },
  {
    "id": 5,
    "label": "Puma Suede Classic XXI",
    "price": 70.00,
    "description": "Casual Shoes",
    "imageUrl": "assets/images/puma_suede.jpg",
  },
  {
    "id": 6,
    "label": "Nike Dunk Low Retro",
    "price": 110.00,
    "description": "Men's Shoes",
    "imageUrl": "assets/images/nike_dunk_low.jpg",
  },
  {
    "id": 7,
    "label": "Adidas Yeezy Boost 350 V2",
    "price": 230.00,
    "description": "Lifestyle Shoes",
    "imageUrl": "assets/images/yeezy_boost_350.jpg",
  },
  {
    "id": 8,
    "label": "Nike Air Max 90",
    "price": 130.00,
    "description": "Men's Shoes",
    "imageUrl": "assets/images/nike_air_max_90.jpg",
  },
  {
    "id": 9,
    "label": "Converse Chuck Taylor All Star",
    "price": 60.00,
    "description": "Classic Shoes",
    "imageUrl": "assets/images/converse_chuck.jpg",
  },
  {
    "id": 10,
    "label": "Jordan 4 Retro \"Military Black\"",
    "price": 210.00,
    "description": "Men's Shoes",
    "imageUrl": "assets/images/jordan_4_military.jpg",
  },
  {
    "id": 11,
    "label": "Nike SB Dunk Low Pro",
    "price": 100.00,
    "description": "Skate Shoes",
    "imageUrl": "assets/images/nike_sb_dunk.jpg",
  },
  {
    "id": 12,
    "label": "Vans Old Skool",
    "price": 70.00,
    "description": "Classic Shoes",
    "imageUrl": "assets/images/vans_old_skool.jpg",
  },
];
