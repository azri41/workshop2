import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:workshop2/pages/Cart/cart_model.dart';

// ignore: must_be_immutable
class Body extends StatelessWidget {
  List<Item> _products = [
    Item(
        id: 1,
        title: "Panadol Children's Suspension 1-6 Years",
        price: 8,
        //icon: Icons.medical_services,
        //color: Colors.lightBlue, 
        qty: 1),
    Item(
        id: 2,
        title: "Axcel Paracetamol 500mg",
        price: 7,
        imgUrl: "https://drive.google.com/file/d/1-bzfdw8EyuzLhKCICR91bFezz0GMKkUL/view?usp=sharing",
        qty: 1),
    Item(
        id: 3,
        title: "Prospan Cough Syrup",
        price: 17,
        //imgUrl: "https://img.icons8.com/cotton/2x/orange.png",
        qty: 1),
    Item(
        id: 4,
        title: "Ubat Batuk Cap Ibu Dan Anak (NIN JIOM PEI PA KOA)",
        price: 8,
        //imgUrl: "https://img.icons8.com/cotton/2x/watermelon.png",
        qty: 1),
    Item(
        id: 5,
        title: "FLU: Hurix's 600 Flu Cough Syrup",
        price: 13,
        //imgUrl: "https://img.icons8.com/cotton/2x/avocado.png",
        qty: 1),
    Item(
        id: 6,
        title: "HURIX'S 600 FLUAWAY CAPSULE IMPROVED",
        price: 8,
        //imgUrl: "https://img.icons8.com/cotton/2x/avocado.png",
        qty: 1),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[50],
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("Home"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () => Navigator.pushNamed(context, '/order'),
          )
        ],
      ),
      body:
      GridView.builder(
        padding: EdgeInsets.all(8.00),
        itemCount: _products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount( crossAxisCount: 2, mainAxisSpacing: 8, crossAxisSpacing: 8, childAspectRatio: 0.8),
        itemBuilder: (context, index){
          return ScopedModelDescendant<CartModel>(
              builder: (context, child, model) {
            return Card( child: Column( children: <Widget>[
              Image.network(_products[index].imgUrl, height: 120, width: 120,),
              Text(_products[index].title, style: TextStyle(fontWeight: FontWeight.bold),),
              Text("\RM"+_products[index].price.toString()),
              OutlineButton(
                    child: Text("Add"),
                    onPressed: () => model.addProduct(_products[index]))
            ])); 
          });
        },
      ),

      // ListView.builder(
      //   itemExtent: 80,
      //   itemCount: _products.length,
      //   itemBuilder: (context, index) {
      //     return ScopedModelDescendant<CartModel>(
      //         builder: (context, child, model) {
      //       return ListTile(
      //           leading: Image.network(_products[index].imgUrl),
      //           title: Text(_products[index].title),
      //           subtitle: Text("\$"+_products[index].price.toString()),
      //           trailing: OutlineButton(
      //               child: Text("Add"),
      //               onPressed: () => model.addProduct(_products[index])));
      //     });
      //   },
      // ),

    );
  }
}