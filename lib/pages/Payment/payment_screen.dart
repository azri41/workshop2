import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:workshop2/models/user.dart';
import 'package:workshop2/models/userInfo.dart';
import 'package:workshop2/pages/Cart/cart_model.dart';
import 'package:workshop2/pages/loading.dart';
import 'package:workshop2/pages/wrapper.dart';
import 'package:workshop2/services/database.dart';

class PaymentScreen extends StatefulWidget{
  static final String path = "lib/pages/Payment/payment_screen.dart";

  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {

  final double delivery = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Confirm Order"),
        centerTitle: true,
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {

    final user = Provider.of<TheUser>(context);

    return StreamBuilder<UserInfo>(
      stream: DatabaseService(uid: user.uid).userInfo,
      builder: (context, snapshot) {
        if(snapshot.hasData){

          UserInfo userInfo = snapshot.data;

    return SingleChildScrollView(
          padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 40.0, bottom: 10.0),
          child: Column(
            children: <Widget>[
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: <Widget>[
              //     Text("Subtotal"),
              //     Text("RM " + ScopedModel.of<CartModel>(context,
              //           rebuildOnChange: true)
              //       .totalCartValue
              //       .toString() +
              //   "",),
              //   ],
              // ),
              // SizedBox(height: 10.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Delivery fee"),
                  Text("RM $delivery"),
                ],
              ),
              SizedBox(height: 10.0,),  
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Total", style: Theme.of(context).textTheme.headline6,),
                  Text("RM "+ScopedModel.of<CartModel>(context,
                        rebuildOnChange: true)
                    .totalCartValue
                    .toString() +
                "", style: Theme.of(context).textTheme.headline6),
                ],
              ),
              SizedBox(height: 20.0,),
              Container(
                color: Colors.grey.shade200,
                padding: EdgeInsets.all(8.0),
                width: double.infinity,
                child: Text("Delivery Address".toUpperCase())
              ),
              Column(
                children: <Widget>[
                  RadioListTile(
                    selected: true,
                    value: userInfo.address,
                    groupValue: userInfo.address,
                    title: Text(userInfo.address),
                    onChanged: (value){},
                  ),
                  // RadioListTile(
                  //   selected: false,
                  //   value: "New Address",
                  //   groupValue: address,
                  //   title: Text("Choose new delivery address"),
                  //   onChanged: (value){},
                  // ),
                  Container(
                    color: Colors.grey.shade200,
                    padding: EdgeInsets.all(8.0),
                    width: double.infinity,
                    child: Text("Contact Number".toUpperCase())
                  ),
                  RadioListTile(
                    selected: true,
                    value: userInfo.phoneNum,
                    groupValue: userInfo.phoneNum,
                    title: Text(userInfo.phoneNum),
                    onChanged: (value){},
                  ),
                  // RadioListTile(
                  //   selected: false,
                  //   value: "New Phone",
                  //   groupValue: phone,
                  //   title: Text("Choose new contact number"),
                  //   onChanged: (value){},
                  // ),
                ],
              ),
              SizedBox(height: 20.0,),
              Container(
                color: Colors.grey.shade200,
                padding: EdgeInsets.all(8.0),
                width: double.infinity,
                child: Text("Payment Option".toUpperCase())
              ),
              RadioListTile(
                groupValue: true,
                value: true,
                title: Text("Cash on Delivery"),
                onChanged: (value){},
              ),
              SizedBox(height: 100),
              Container(
                width: double.infinity,
                child: RaisedButton(
                  color: Theme.of(context).primaryColor,
                  onPressed: ()async {  
                          await _asyncConfirmDialog(context);  
                        },
                  child: Text("Confirm Order", style: TextStyle(
                    color: Colors.white
                  ),),
                ),
              ),

                Container(
                width: double.infinity,
                child: RaisedButton(
                  color: Colors.red[900],
                  onPressed: ()async {  
                          Navigator.pop(context); 
                        },
                  child: Text("Cancel Order", style: TextStyle(
                    color: Colors.white
                  ),),
                ),
              )
            ],
          ),
        );
  }
  else{
      return Loading();
  }
    }
    );
  }
}

enum ConfirmAction { Cancel, Accept}  
Future<ConfirmAction> _asyncConfirmDialog(BuildContext context) async {  
  return showDialog<ConfirmAction>(  
    context: context,  
    barrierDismissible: false, // user must tap button for close dialog!  
    builder: (BuildContext context) {  
      return AlertDialog(  
        title: Text('Are you sure?'),  
        content: const Text(  
            'This will proceed your order and clear your cart.'),  
        actions: <Widget>[  
          FlatButton(  
            child: const Text('Cancel'),  
            onPressed: () {  
              Navigator.of(context).pop(ConfirmAction.Cancel);  
            },  
          ),  
          FlatButton(  
            child: const Text('Pay'),  
            onPressed: () {  
                Navigator.push(context, 
                MaterialPageRoute(
                  builder: (context) {
                    ScopedModel.of<CartModel>(context).clearCart();
                    return Wrapper();
                  },
                ),
            );  
            },  
          )  
        ],  
      );  
    },  
  );  
} 