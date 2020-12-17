import 'package:flutter/material.dart';
import 'package:workshop2/components/haveAccountCheck.dart';
import 'package:workshop2/components/inputField.dart';
import 'package:workshop2/components/passwordField.dart';
import 'package:workshop2/components/rounded_button.dart';
import 'package:workshop2/pages/Login/components/background.dart';
import 'package:flutter_svg/svg.dart';
import 'package:workshop2/pages/SignUp/signup_screen.dart';
import 'package:workshop2/services/auth.dart';

class Body extends StatefulWidget {
  // const Body({
  //   Key key,
  // }) : super(key: key);
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();

  //text field state
  String email = '';
  String password = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "LOGIN",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: size.height * 0.03),
              SvgPicture.asset(
                "assets/icons/login.svg",
                height: size.height * 0.35,
              ),
              SizedBox(height: size.height * 0.03),
              InputField(
                hintText: "Your Email",
                onChanged: (value) {
                  setState(() => email = value);
                },
              ),
              PasswordField(
                onChanged: (value) {
                  setState(() => password = value); 
                },
              ),
              RoundedButton(
                text: "LOGIN",
                press: () async{
                  if(_formKey.currentState.validate()){
                    dynamic result = await _auth.loginWithEmailAndPassword(email, password);
                    if(result == null){
                      setState(() => error = 'Could not sign in with those credentials');
                    }
                    else{
                      Navigator.pop(
                      context);
                    }
                  }
                },
              ),
              SizedBox(height: 12.0),
              Text(
                error,
                style: TextStyle(color: Colors.red, fontSize: 14.0),
              ),
              SizedBox(height: size.height * 0.03),
              HaveAnAccountCheck(
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SignUpScreen();
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
  }
}
