import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:workshop2/models/AMedicine.dart';

import 'components/body.dart';


class DetailsScreen extends StatelessWidget {
  final AMedicine aMedicine;

  const DetailsScreen({Key key, this.aMedicine}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // each product have a color
      backgroundColor: aMedicine.color,
      appBar: buildAppBar(context),
      body: Body(aMedicine: aMedicine),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: aMedicine.color, 
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/back.svg',
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      //actions: <Widget>[
      //  IconButton(
      //    icon: SvgPicture.asset("assets/icons/search.svg"),
      //    onPressed: () {},
      //  ),
      //  IconButton(
      //    icon: SvgPicture.asset("assets/icons/cart.svg"),
      //    onPressed: () {},
      //  ),
      //  SizedBox(width: kDefaultPaddin / 2)
      //],
    );
  }
}
