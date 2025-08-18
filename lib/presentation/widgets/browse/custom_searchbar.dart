

import 'package:flutter/material.dart';
import 'package:sneakers/core/styles/theme.dart';

class CustomSearchBar extends StatefulWidget{
  const CustomSearchBar({
    super.key,
    this.onChanged,
    this.onSubmitted,
  });

  final Function(String)? onChanged;
  final Function(String)? onSubmitted;

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      onChanged: widget.onChanged,
      onSubmitted: widget.onSubmitted,

      hintText: "Search",
      hintStyle: WidgetStatePropertyAll<TextStyle>(agBody3) ,

      trailing: <Widget>[
        Icon(Icons.search, color: contentSecondary,)
      ],

      elevation: WidgetStatePropertyAll<double>(0.0),
      shape: WidgetStatePropertyAll<OutlinedBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.all(Radius.circular(12))
        ),
      ),
    );
  }
}