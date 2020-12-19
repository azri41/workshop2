import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:workshop2/constants.dart';
import 'package:workshop2/models/userInfo.dart';

class UserName extends StatefulWidget {

  @override
  _UserNameState createState() => _UserNameState();
}

class _UserNameState extends State<UserName> {

  String name ='';
  String phoneNum ='';
  String address ='';

  @override
  Widget build(BuildContext context) {

    final users = Provider.of<List<UserInfo>>(context);
    users.forEach((userInfo){
      name = userInfo.name;
      phoneNum = userInfo.phoneNum;
      address = userInfo.address;
    });

    return Text(
      'Hi, $name !',
      style: TextStyle(
      color: uiLightColor,
      fontSize: 30,
      fontWeight: FontWeight.bold,
      ),      
    );

  }
}