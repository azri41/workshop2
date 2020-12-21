import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:workshop2/components/rounded_button.dart';
import 'package:workshop2/models/user.dart';
import 'package:workshop2/models/userInfo.dart';
import 'package:workshop2/pages/Home/userEmail.dart';
import 'package:workshop2/pages/Profile/components/background.dart';
import 'package:workshop2/pages/loading.dart';
import 'package:workshop2/pages/wrapper.dart';
import 'package:workshop2/services/database.dart';


class Body extends StatefulWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {

  final _formKey = GlobalKey<FormState>();
  String _currentEmail;
  String _currentPassword;
  String _currentName;
  String _currentPhoneNum;
  String _currentAddress;
  String error = '';

  
  @override
  Widget build(BuildContext context) {
    
    Size size = MediaQuery.of(context).size;
    final user = Provider.of<TheUser>(context);

    return StreamBuilder<UserInfo>(
      stream: DatabaseService(uid: user.uid).userInfo,
      builder: (context, snapshot) {
        if(snapshot.hasData){

          UserInfo userInfo = snapshot.data;

          return Background(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "ACCOUNT DETAILS",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(height: size.height * 0.03),
                  CircleAvatar(
                    child: Icon(
                      Icons.perm_identity,
                      color: Colors.white,
                    ),
                    radius: 40,
                  ),
                  SizedBox(height: size.height * 0.03),
                    UserEmail(), // email

                    Container(  //name
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      width: size.width * 0.8,
                          child: TextFormField(
                        initialValue: userInfo.name,
                        decoration: InputDecoration(
                          enabledBorder:   OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(color: Colors.lightBlue[100]),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(color: Colors.blue[500])),
                        ),
                        validator: (val) => val.isEmpty ? 'Please enter a name' : null,
                        onChanged: (val) => setState(() => _currentName = val),
                      ),
                    ),

                    Container(  //phone number
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      width: size.width * 0.8,
                          child: TextFormField(
                        initialValue: userInfo.phoneNum,
                        decoration: InputDecoration(
                          enabledBorder:   OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(color: Colors.lightBlue[100]),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(color: Colors.blue[500])),
                        ),
                        validator: (val) => val.isEmpty ? 'Please enter a phone number' : null,
                        onChanged: (val) => setState(() => _currentPhoneNum = val),
                      ),
                    ),

                    Container(  //address
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      width: size.width * 0.8,
                          child: TextFormField(
                        initialValue: userInfo.address,
                        decoration: InputDecoration(
                          enabledBorder:   OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(color: Colors.lightBlue[100]),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(color: Colors.blue[500])),
                        ),
                        validator: (val) => val.isEmpty ? 'Please enter an address' : null,
                        onChanged: (val) => setState(() => _currentAddress = val),
                      ),
                    ),     
                                                                        
                  RoundedButton(
                    text: "UPDATE",
                    press: () {
                      
                    },
                  ),
                  RoundedButton(
                    text: "CANCEL",
                    press: () {
                      Navigator.push(context, 
                          MaterialPageRoute(
                            builder: (context) {
                              return Wrapper();
                            },
                          ),
                      );
                    },
                  ),            
                ],
              ),
            ),
          ),
        );
        } else {
          return Loading();
        }

      }
    );
  }
}
