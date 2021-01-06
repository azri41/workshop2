import 'package:flutter/material.dart';
import 'package:workshop2/constants.dart';
import 'package:workshop2/models/CMedicine.dart';
import 'description.dart';
import 'product_title_with_image.dart';

class Body extends StatelessWidget {
  final CMedicine cMedicine;

  const Body({Key key, this.cMedicine}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // It provide us total height and width
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.45),
                  padding: EdgeInsets.only(
                    top: size.height * 0.10,
                    left: kDefaultPaddin,
                    right: kDefaultPaddin,
                  ),
                  // height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      //ColorAndSize(product: cMedicine),
                      SizedBox(height: kDefaultPaddin / 2),
                      Description(cMedicine: cMedicine),
                      SizedBox(height: kDefaultPaddin / 2),
                      //CounterWithFavBtn(),
                      SizedBox(height: kDefaultPaddin / 2),
                      //AddToCart(product: product)
                    ],
                  ),
                ),
                ProductTitleWithImage(cMedicine: cMedicine)
              ],
            ),
          )
        ],
      ),
    );
  }
}
