import 'package:flutter/material.dart';
import 'package:alan_voice/alan_voice.dart';
import 'package:workshop2/constants.dart';
import 'package:workshop2/pages/Login/login_screen.dart';
import 'package:workshop2/pages/home.dart';
import 'package:workshop2/pages/loading.dart';
import 'package:workshop2/pages/Welcome/welcome_screen.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/welcome',
  routes: {
    '/': (context) => Loading(),
    '/home': (context) => Home(),
    '/welcome': (context) => WelcomeScreen(),
    '/login': (context) => LoginScreen(), 
  }
));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'iCare',
      theme:  ThemeData(
        primaryColor: uiPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: WelcomeScreen(),
    );
  }
}

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