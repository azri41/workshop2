import 'package:flutter/material.dart';
import 'package:workshop2/components/Sidebar/navigation_bloc.dart';
import 'package:workshop2/pages/Cart/components/body.dart';

class CartScreen extends StatelessWidget with NavigationStates{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}