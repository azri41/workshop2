import 'package:flutter/material.dart';
import 'package:workshop2/components/searchField.dart';

class SearchBar extends StatelessWidget {
  final ValueChanged<String> onChanged;
  final String hintText;
  const SearchBar({
    Key key,
    this.onChanged,
    this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SearchFieldContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
