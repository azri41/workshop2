import 'package:flutter/material.dart';
import '../constants.dart';

class SearchFieldContainer extends StatelessWidget {
  final Widget child;
  const SearchFieldContainer({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 12),
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 2),
      width: size.width * 0.75,
      decoration: BoxDecoration(
        color: uiLightColor,
        borderRadius: BorderRadius.circular(29),
      ),
      child: child,
    );
  }
}