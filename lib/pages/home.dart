import 'package:alan_voice/alan_voice.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_mobile_vision/flutter_mobile_vision.dart';
import 'package:workshop2/components/Sidebar/navigation_bloc.dart';
import 'package:workshop2/components/searchBar.dart';
import 'package:workshop2/constants.dart';
import 'package:workshop2/pages/Medicine/medicine_screen.dart';
import 'dart:async';
import 'CategoryCard.dart';
import 'ProductCard.dart';

class Home extends StatefulWidget with NavigationStates{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _cameraOcr = FlutterMobileVision.CAMERA_BACK;
  String _textValue = "sample";

  _HomeState() {
	  AlanVoice.addButton("41fa2d9354cc9718100d1127c5b3af092e956eca572e1d8b807a3e2338fdd0dc/stage");
    // AlanVoice.callbacks.add((command) => _handleCommand(command.data));
  }

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
        'assets/images/mask.png', 160),
    Product(
        'Black n95 Mask',
        "It is n95 mask designed to prevent infections in patients.",
        'assets/images/black_mask.png',
        250),
    Product('Eye Patch', "It is designed to prevent infections in eyes.",
        'assets/images/eyepatch.png', 300),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: uiPrimaryColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: uiPrimaryColor,
        elevation: 0,
        // leading: IconButton(
        //   onPressed: () {
        //     Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //       builder: (context) => SideBarLayout(),
        //     ),
        //   );
        //   },
        //   icon: Transform.rotate(
        //     angle: pi / 2,
        //     child: Icon(
        //       Feather.bar_chart_2,
        //       color: uiLightColor,
        //       size: 30,
        //     ),
        //   ),
        // ),
        // title: SearchBar(),
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
                // Retrieve the text the that user has entered by using the
                // TextEditingController.
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              'Hi, Azri!',
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
                fontSize: 15,
              ),
            ),
            Row(
              children: [
                Text(
                  'Current location',
                  style: TextStyle(
                    color: uiLightColor,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  Feather.chevron_down,
                  color: uiLightColor,
                  size: 20,
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
                    fontSize: 20,
                  ),
                ),
                Text(
                  'View all',
                  style: TextStyle(
                    color: uiLightColor,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Container(
              height: 125,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  CategoryCard(
                    title: 'FirstAid',
                    icon: MaterialCommunityIcons.medical_bag,
                  ),
                  CategoryCard(
                    title: 'Medicines',
                    icon: MaterialCommunityIcons.pill,
                  ),
                  CategoryCard(
                    title: 'HealthCare',
                    icon: Feather.activity,
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Text(
              "Today's deals",
              style: TextStyle(
                color: uiLightColor,
                fontSize: 20,
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


// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           children: <Widget>[
//             FlatButton.icon(
//               onPressed: (){
//                 Navigator.pushNamed(context, '/medicine');
//               },
//               icon: Icon(Icons.medical_services),
//               label: Text('Medicine'),
//             ),
//             FlatButton.icon(
//               onPressed: (){
//                 Navigator.pushNamed(context, '/order');
//               },
//               icon: Icon(Icons.medical_services),
//               label: Text('Order'),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

