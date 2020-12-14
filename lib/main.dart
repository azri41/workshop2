import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:workshop2/constants.dart';
import 'package:workshop2/pages/Cart/cart_model.dart';
import 'package:workshop2/pages/Login/login_screen.dart';
import 'package:workshop2/pages/Medicine/medicine_screen.dart';
import 'package:workshop2/pages/Order/order_screen.dart';
import 'package:workshop2/pages/home.dart';
import 'package:workshop2/pages/loading.dart';
import 'package:workshop2/pages/Welcome/welcome_screen.dart';
import 'package:workshop2/pages/wrapper.dart';
import 'package:workshop2/services/auth.dart';

import 'models/user.dart';

// void main() => runApp(MyApp());
// void main() => runApp(MaterialApp(
//   initialRoute: '/welcome',
//   routes: {
//     '/': (context) => Loading(),
//     '/home': (context) => Home(),
//     '/welcome': (context) => WelcomeScreen(),
//     '/login': (context) => Login(), 
//     '/order': (context) => OrderScreen(),
//     '/medicine': (context) => MedicineScreen(),    
//   }
// ));

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp(
    model: CartModel(),
  ));
}

class MyApp extends StatelessWidget {
  final CartModel model;

  const MyApp({Key key, @required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScopedModel<CartModel>(
        model: model,
        child: StreamProvider<TheUser>.value(
        value: AuthService().user,
        child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'iCare',
        theme:  ThemeData(
          primaryColor: uiPrimaryColor,
          scaffoldBackgroundColor: Colors.white,
        ),
          home: Wrapper(),
        ),
      ),
    );
  }
}

// void main() => runApp(MaterialApp(
//   // initialRoute: '/welcome',
//   // routes: {
//   //   '/': (context) => Loading(),
//   //   '/home': (context) => Home(),
//   //   '/welcome': (context) => WelcomeScreen(),
//   //   '/login': (context) => Login(), 
//   //   '/order': (context) => OrderScreen(),
//   //   '/medicine': (context) => MedicineScreen(),    
//   // }
// ));

// void main() => runApp(MyApp(
//     model: CartModel(),
//   ));

  // final CartModel model;

  // const MyApp({Key key, @required this.model}) : super(key: key);

  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //   //   initialRoute: '/welcome',
  //   //   routes: {
  //   //   '/': (context) => Loading(),
  //   //   '/home': (context) => Home(),
  //   //   '/welcome': (context) => WelcomeScreen(),
  //   //   '/login': (context) => LoginScreen(), 
  //   //   '/order': (context) => OrderScreen(),
  //   //   '/medicine': (context) => MedicineScreen(),    
  //   // },
  //     debugShowCheckedModeBanner: false,
  //     title: 'iCare',
  //     theme:  ThemeData(
  //       primaryColor: uiPrimaryColor,
  //       scaffoldBackgroundColor: Colors.white,
  //     ),
  //     home: WelcomeScreen(),
  //   );
  // }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {

// _MyHomePageState() {
// 	AlanVoice.addButton("41fa2d9354cc9718100d1127c5b3af092e956eca572e1d8b807a3e2338fdd0dc/stage");
//   AlanVoice.callbacks.add((command) => _handleCommand(command.data));
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
// int currentIndex = 0;

//   static const List<Widget> widgetList = <Widget>[
//     Text('Login'),
//     Text('SIGN UP'),
//   ];

// void changeIndex(int index){
//   setState(() {
//     currentIndex = index;
//   });
// }

//   @override
//   Widget build(BuildContext context) {

//     return Scaffold(
//     appBar: AppBar(
//       title: Text(widget.title),
//     ),
//     body: Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[widgetList.elementAt(currentIndex)],
//       ),
//     ),
//     bottomNavigationBar: BottomNavigationBar(
//       items: <BottomNavigationBarItem>[
//         BottomNavigationBarItem(
//           label: 'LOGIN', icon: Icon(Icons.account_circle),
//         ),
//         BottomNavigationBarItem(
//           label: 'SIGN UP', icon: Icon(Icons.people),
//         ),
//       ],
//       onTap: changeIndex,
//       currentIndex: currentIndex,
//       selectedItemColor: Colors.black,
//       unselectedItemColor: Colors.white,
//       backgroundColor: Colors.lightBlue,
//     ),
//     );
//   }
// }