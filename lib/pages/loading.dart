import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:workshop2/constants.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: uiPrimaryColor,
      body: Center(
        child: SpinKitPumpingHeart(
          color: Colors.white,
          size: 130.0,
        ),
      ),
    );
  }
}