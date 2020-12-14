import 'package:flutter/material.dart';
import 'package:workshop2/pages/Login/login_screen.dart';
import 'package:workshop2/pages/Welcome/welcome_screen.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: WelcomeScreen(),
    );
  }
}