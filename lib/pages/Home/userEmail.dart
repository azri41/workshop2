import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class UserEmail extends StatefulWidget {

  @override
  _UserEmailState createState() => _UserEmailState();
}

class _UserEmailState extends State<UserEmail> {

  User currentUser = FirebaseAuth.instance.currentUser;
  String _currentEmail;
  

  String _email(){
    if(currentUser != null) {
      return currentUser.email;
    } else {
      return "No current user";
    }
  }
  
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
          child: TextFormField(
        initialValue: _email(),
        decoration: InputDecoration(
          enabledBorder:   OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: Colors.lightBlue[100]),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: Colors.blue[500])),

        ),
        validator: (val) => val.isEmpty ? 'Please enter an email' : null,
        onChanged: (val) => setState(() => _currentEmail = val),
      ),
    );

  }
}