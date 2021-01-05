import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:workshop2/pages/Cart/cart_model.dart';
import 'package:workshop2/pages/Order/order_screen.dart';

// ignore: must_be_immutable
class Body extends StatelessWidget {
  List<Item> _products = [
    Item(
        id: 1,
        title: "Panadol Children's Suspension 1-6 Years",
        price: 8,
        imgUrl: "https://bit.ly/3r8JFuz",
        qty: 1),
    Item(
        id: 2,
        title: "Axcel Paracetamol 500mg",
        price: 7,
        imgUrl: "https://bit.ly/3msoqAx",
        qty: 1),
    Item(
        id: 3,
        title: "Prospan Cough Syrup",
        price: 17,
        imgUrl: "https://bit.ly/3nuqdq5",
        qty: 1),
    Item(
        id: 4,
        title: "Ubat Batuk Cap Ibu Dan Anak (NIN JIOM PEI PA KOA)",
        price: 8,
        imgUrl: "https://bit.ly/3r8rc1t",
        qty: 1),
    Item(
        id: 5,
        title: "FLU: Hurix's 600 Flu Cough Syrup",
        price: 13,
        imgUrl: "https://bit.ly/3nvctez",
        qty: 1),
    Item(
        id: 6,
        title: "HURIX'S 600 FLUAWAY CAPSULE IMPROVED",
        price: 8,
        imgUrl: "https://bit.ly/3r0p6k9",
        qty: 1),
    Item(
        id: 7,
        title: "Face Mask (50 pcs)",
        price: 40,
        imgUrl: "https://bit.ly/3ngWNdZ",
        qty: 1),
    Item(
        id: 8,
        title: "Black N95 Mask",
        price: 5,
        imgUrl: "https://bit.ly/3nnzXBK",
        qty: 1),
    Item(
        id: 9,
        title: "Dettol Instant Hand Sanitizer Original 200ml",
        price: 8,
        imgUrl: "https://bit.ly/2LrbhdW",
        qty: 1),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[50],
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        centerTitle: true,
        title: Text("Buy Items"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return OrderScreen();
                    },
                  ),
                );
              },
          )
        ],
      ),
      body:
      GridView.builder(
        padding: EdgeInsets.all(10.00),
        itemCount: _products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount( crossAxisCount: 2, mainAxisSpacing: 8, crossAxisSpacing: 8, childAspectRatio: 0.8),
        itemBuilder: (context, index){
          return ScopedModelDescendant<CartModel>(
              builder: (context, child, model) {
            return Card( child: Column( children: <Widget>[
              Image.network(_products[index].imgUrl, height: 80, width: 80,),
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