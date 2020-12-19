import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:workshop2/constants.dart';
import 'package:workshop2/models/userInfo.dart';

class UserAddress extends StatefulWidget {

  @override
  _UserAddressState createState() => _UserAddressState();
}

class _UserAddressState extends State<UserAddress> {

  String address ='';

  @override
  Widget build(BuildContext context) {

    final users = Provider.of<List<UserInfo>>(context);
    users.forEach((userInfo){
      address = userInfo.address;
    });

    return Text(
      '$address',
      style: TextStyle(
      color: uiLightColor,
      fontSize: 15,
      fontWeight: FontWeight.bold,
      ),      
    );

  }
}