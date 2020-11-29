import 'package:flutter/material.dart';
import 'package:workshop2/components/Sidebar/navigation_bloc.dart';
import 'package:workshop2/pages/Medicine/components/body.dart';

class Product {
  // final String name;
  // final String price;
  // final IconData icon;
  // final Color color;

  // Medicine(String s, {this.name, this.price, this.icon, this.color});
  String name;
  String img;
  String description;
  int price;
  Product(this.name, this.description, this.img, this.price);
}

class MedicineScreen extends StatelessWidget with NavigationStates{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
