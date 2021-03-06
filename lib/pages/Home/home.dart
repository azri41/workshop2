// import 'package:alan_voice/alan_voice.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_mobile_vision/flutter_mobile_vision.dart';
import 'package:provider/provider.dart';
import 'package:workshop2/components/Sidebar/navigation_bloc.dart';
import 'package:workshop2/components/searchBar.dart';
import 'package:workshop2/constants.dart';
import 'package:workshop2/models/user.dart';
import 'package:workshop2/models/userInfo.dart';
import 'package:workshop2/pages/AdultMedicine/amedicine_screen.dart';
import 'package:workshop2/pages/Cart/cart_screen.dart';
import 'package:workshop2/pages/CategoryCard.dart';
import 'package:workshop2/pages/ChildMedicine/cmedicine_screen.dart';
import 'package:workshop2/pages/Medicine/medicine_screen.dart';
import 'package:workshop2/pages/ProductCard.dart';
import 'package:workshop2/pages/loading.dart';
import 'package:workshop2/services/database.dart';
import 'dart:async';


class Home extends StatefulWidget with NavigationStates{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _cameraOcr = FlutterMobileVision.CAMERA_BACK;
  String _textValue = "sample";

  // _HomeState() {
	//   AlanVoice.addButton("41fa2d9354cc9718100d1127c5b3af092e956eca572e1d8b807a3e2338fdd0dc/stage");
  //   // AlanVoice.callbacks.add((command) => _handleCommand(command.data));
  // }

  // void _handleCommand(Map<String, dynamic> command) {
// 	//call client code that will react to the received command
//   debugPrint("New command: ${command}");
//   switch (command["command"]){
//     case "hello":
//       debugPrint("NICE");
//     break;
//     default:
//       debugPrint("Unknown command: ${command}");
//   }
// }

  List<Product> products = [
    Product('Surgical Mask', "It is designed to prevent infections.",
        'assets/images/mask.png', 200),
    Product(
        'Black N95 Mask',
        "It is N95 mask designed to prevent infections in patients.",
        'assets/images/black_mask.png',
        250),
    Product('Hand Sanitizer', "It is designed to prevent germs from you.",
        'assets/images/hand_sanitizer.png', 300),
  ];

  @override
  Widget build(BuildContext context) {

    final user = Provider.of<TheUser>(context);

    return StreamBuilder<UserInfo>(
      stream: DatabaseService(uid: user.uid).userInfo,
      builder: (context, snapshot) {
        if(snapshot.hasData){

          UserInfo userInfo = snapshot.data;
          String name = userInfo.name;
          String address = userInfo.address;          

        return Scaffold(
        backgroundColor: uiPrimaryColor,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: uiPrimaryColor,
          elevation: 0,
          actions: [
            SearchBar(
              hintText: _textValue,
              onChanged: (_textValue) {},
            ),
            IconButton(
              onPressed: () {
              return showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  // Retrieve the text that user has entered 
                  content: Text(_textValue),
                );
              },
            );
              },
              icon: Icon(
                Feather.search,
                color: uiLightColor,
                size: 20,
              ),
            ),
          ],
        ),
        body:
          Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text(
                    'Hi, $name !',
                    style: TextStyle(
                    color: uiLightColor,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    ),      
                  ),
              SizedBox(height: 10),
              Text(
                'Deliver to',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                Text(
                      '$address',
                      style: TextStyle(
                      color: uiLightColor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      ),      
                    ),
                ],
              ),
              SizedBox(height: 40),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: FlatButton(
                  onPressed: _read,
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 22),
                  color: uiSecondaryColor,
                  splashColor: uiPrimaryColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Feather.camera,
                        color: Colors.black,
                        size: 25,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Scan your prescription',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Categories',
                    style: TextStyle(
                      color: uiLightColor,
                      fontSize: 20,fontWeight: FontWeight.bold,
                    ),
                  ),
                  // Text(
                  //   'View all',
                  //   style: TextStyle(
                  //     color: uiLightColor,
                  //     fontSize: 15,
                  //     fontWeight: FontWeight.bold,
                  //     decoration: TextDecoration.underline,
                  //   ),
                  // ),
                ],
              ),
              SizedBox(height: 15),
              Container(
                height: 125,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    FlatButton(
                        onPressed: () {
                          Navigator.push(
                          context,
                          MaterialPageRoute(
                          builder: (context) {
                            return AMedicineScreen();
                          },
                        ),
                      );
                      },
                      child: CategoryCard(
                      title: 'Adult Medicines',
                      icon: MaterialCommunityIcons.medical_bag,
                      ),
                    ),

                    FlatButton(
                        onPressed: () {
                          Navigator.push(
                          context,
                          MaterialPageRoute(
                          builder: (context) {
                            return CMedicineScreen();
                          },
                        ),
                      );
                        },
                        child: CategoryCard(
                        title: 'Kids Medicines',
                        icon: MaterialCommunityIcons.pill,
                        ),
                    ),

                      FlatButton(
                        onPressed: () {
                          Navigator.push(
                          context,
                          MaterialPageRoute(
                          builder: (context) {
                            return CartScreen();
                          },
                        ),
                      );
                        },
                        child: CategoryCard(
                        title: 'Cart',
                        icon: Feather.shopping_cart,
                        ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Text(
                "Today's deals",
                style: TextStyle(
                  color: uiLightColor,
                  fontSize: 20,fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 15),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: products.length,
                  itemBuilder: (context, index) =>
                      ProductCard(product: products[index]),
                ),
              ),
            ],
          ),
        ),
        );
        // floatingActionButton: FloatingActionButton(
        //   backgroundColor: uiSecondaryColor,
        //   splashColor: uiPrimaryColor,
        //   onPressed: () {
        //     Navigator.push(
        //       context,
        //       MaterialPageRoute(
        //         builder: (context) => Reminder(),
        //       ),
        //     );
        //   },
        //   child: Icon(
        //     Icons.alarm_add,
        //     color: uiLightColor,
        //     size: 30,
        //   ),
        // ),
        }
        else {
          return Loading();
        }
      }
    );
  }

  Future<Null> _read() async {
    List<OcrText> texts = [];
    try {
      texts = await FlutterMobileVision.read(
        camera: _cameraOcr,
        // multiple: true,
        // preview: Size(1280,720), //quality preview
        fps: 15.0,
        waitTap: true, 
      );

      setState(() {
        _textValue = texts[0].value;
      });
    } on Exception {
      texts.add(new OcrText('Failed to recognize text.'));
    }
  }
}