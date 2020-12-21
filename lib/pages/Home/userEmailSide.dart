import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:workshop2/constants.dart';

class UserEmailSide extends StatefulWidget {

  @override
  _UserEmailSideState createState() => _UserEmailSideState();
}

class _UserEmailSideState extends State<UserEmailSide> {

  User currentUser = FirebaseAuth.instance.currentUser;
  
  String _email(){
    if(currentUser != null) {
      return currentUser.email;
    } else {
      return "No current user";
    }
  }
  
  @override
  Widget build(BuildContext context) {

    return Text(
      _email(),
      style: TextStyle(
      color: Color(0xFF1BB5FD),
      fontSize: 18,
      ),      
    );

  }
}