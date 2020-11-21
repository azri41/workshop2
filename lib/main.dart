import 'package:flutter/material.dart';
import 'package:alan_voice/alan_voice.dart';
import 'components/rounded_button.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'iCare - Drugs Recommender System',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'iCare - Drugs Recommender System'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

_MyHomePageState() {
	AlanVoice.addButton("41fa2d9354cc9718100d1127c5b3af092e956eca572e1d8b807a3e2338fdd0dc/stage");
  AlanVoice.callbacks.add((command) => _handleCommand(command.data));
}

void _handleCommand(Map<String, dynamic> command) {
	//call client code that will react to the received command
  debugPrint("New command: ${command}");
  switch (command["command"]){
    case "hello":
      debugPrint("NICE");
    break;
    default:
      debugPrint("Unknown command: ${command}");
  }
}


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hello, Alan',
            ),
            RoundedButton(
              text: 'Hello',
              press: () {},
            )
          ],
        ),
      ),
    );
  }
}