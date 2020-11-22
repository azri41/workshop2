import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key key, 
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; 
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            child: Text('iCare', 
            style: TextStyle(
              fontFamily: 'Comfortaa',
              fontSize: 30.0,
            ),)
          ),
          Positioned(
            right: 120,
            child: Image.asset(
              "assets/images/love.png",
              width: size.width * 0.1,
            ),
          ),
          child,
        ],
      ),
    );
  }
}