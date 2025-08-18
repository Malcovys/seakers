import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:sneakers/core/styles/theme.dart';
import 'package:sneakers/presentation/widgets/browse/custom_searchbar.dart';
import 'package:sneakers/presentation/widgets/item_card.dart';

final List<String> sortFilters = [
  "newest",
  "oldest",
  "lowest price",
  "highest price",
];

@RoutePage()
class BrowsePage extends StatefulWidget {
  const BrowsePage({super.key});
  
  @override
  State<StatefulWidget> createState() => _BrowsePageState();
}

class _BrowsePageState extends State<BrowsePage> {

  void _onTypeToSearchBar(String value) {
    print(value);
  }

  void _onSumbitedSearchBar(String value) {
    print(value);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        CustomSearchBar(
          onChanged: _onTypeToSearchBar,
          onSubmitted: _onSumbitedSearchBar,
        ),
        SizedBox(height: 25),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "13134 products",
              style: body2Medium,
            ),
            SortBy()
          ],
        ),
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
    );
  }
}

class SortBy extends StatefulWidget {
  const SortBy({
    super.key,
    this.onChanged,
  });

  final Function(String)? onChanged;

  @override
  State<SortBy> createState() => _SortByState();
}

class _SortByState extends State<SortBy> {
  String currentFilter = sortFilters.first;

  void _onChangeFilterValue(String? newFilterValue) {
    setState(() {
      currentFilter = newFilterValue!;
    });
  }
 
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text("Sort by", style:  body2Medium,),
        SizedBox(width: 10,),
        DropdownButton<String>(
          value: currentFilter,
          icon: Icon(Icons.keyboard_arrow_down_rounded),
          style: body2Bold.copyWith(color: contentPrimary),
          underline: Container(),

          items: sortFilters.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(value: value, child: Text(value));
          }).toList(),

          onChanged: _onChangeFilterValue,
        )
      ],
    );
  }
}