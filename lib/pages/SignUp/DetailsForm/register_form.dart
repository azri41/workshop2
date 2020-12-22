import 'package:flutter/material.dart';
import 'package:workshop2/components/rounded_button.dart';
import 'package:workshop2/components/textField.dart';
import 'package:workshop2/constants.dart';
import 'package:workshop2/pages/Login/login_screen.dart';
import 'package:workshop2/pages/loading.dart';
import 'package:workshop2/pages/wrapper.dart';
import 'package:workshop2/services/auth.dart';

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() =>  _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  bool loading = false;

  //text field state
  String name = '';
  String phoneNum = '';
  String address = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; 
    return loading ? Loading() :  Scaffold(
      body: Container(
            padding:  EdgeInsets.all(20.0),
            child:  Form(
              key: _formKey,
              child:  ListView(
                children: <Widget>[
                   Container(
                      padding:  EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                        "assets/images/Logo.png",
                        width: size.width * 0.5,
                        ),
                        ],
                      )
                  ),
                   TextFieldContainer(
                      child:  TextFormField(
                        validator: (value) => value.isEmpty ? 'Enter a name' : null,
                        onChanged: (value) {
                          setState(() => name = value);
                        },
                          keyboardType: TextInputType.text, //Name
                          decoration:  InputDecoration(
                            hintText: 'Name',
                            labelText: 'Enter your name',
                            icon:  Icon(Icons.person),
                          ),

                      )
                  ),
                   TextFieldContainer(
                      child:  TextFormField(                       
                          validator: (value) => value.length < 10  ? 'Enter 10 or more number'  : value.length > 11 ? 'Invalid phone number' : null, 
                          onChanged: (value) {
                          setState(() => phoneNum = value);
                        },                          
                          keyboardType: TextInputType.number, //Phone number
                          decoration:  InputDecoration(
                              hintText: '011-23456789',
                              labelText: 'Phone Number',
                              icon:  Icon(Icons.phone)
                            ),

                      ),
                  ),
                   TextFieldContainer(
                      child:  TextFormField(                      
                        validator: (value) => value.isEmpty ? 'Enter an address' : null,  
                        onChanged: (value) {
                          setState(() => address = value);
                        },                          
                          keyboardType: TextInputType.text, //Address
                          decoration:  InputDecoration(
                            hintText: 'Address',
                            labelText: 'Enter your address',
                            icon:  Icon(Icons.home),
                          ),

                      )
                  ),                

              RoundedButton(
                text: "REGISTER DETAILS",
                press: () async{
                  if(_formKey.currentState.validate()){
                    setState(() => loading = true);
                    dynamic result = await _auth.registerUserDetails(name, phoneNum, address);
                    if(result == null){
                      setState((){
                        error = 'Please supply a valid phone number';
                        loading = false;
                      });
                    }
                    else{
                    Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Wrapper();
                      },
                    ),
                  );
                    }
                  }
                },
              ),

                ],
              ),
            )
        ),
    );
  }
}