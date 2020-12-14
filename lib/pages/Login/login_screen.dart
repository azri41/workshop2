import 'package:flutter/material.dart';
import 'package:workshop2/pages/Login/components/body.dart';
import 'package:workshop2/services/auth.dart';

class Login extends StatefulWidget{
  @override
  _LoginState createState() => _LoginState();
}

// class LoginScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Body(),
//     );
//   }
// }

class _LoginState extends State<Login>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}