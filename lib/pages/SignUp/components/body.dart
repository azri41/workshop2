import 'package:flutter/material.dart';
import 'package:workshop2/components/inputField.dart';
import 'package:workshop2/components/passwordField.dart';
import 'package:workshop2/pages/Login/login_screen.dart';
import 'package:workshop2/pages/SignUp/DetailsForm/register_form.dart';
import 'package:workshop2/pages/SignUp/components/background.dart';
import 'package:workshop2/components/haveAccountCheck.dart';
import 'package:workshop2/components/rounded_button.dart';
import 'package:flutter_svg/svg.dart';
import 'package:workshop2/pages/loading.dart';
import 'package:workshop2/services/auth.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  bool loading = false;

  //text field state
  String email = '';
  String password = '';
  String error = '';
  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return loading ? Loading() : Background(
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "SIGNUP",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: size.height * 0.03),
              SvgPicture.asset(
                "assets/icons/register.svg",
                height: size.height * 0.35,
              ),
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
                text: "SIGNUP",
                press: () async{
                  if(_formKey.currentState.validate()){
                    setState(() => loading = true);
                    dynamic result = await _auth.registerWithEmailAndPassword(email, password);
                    if(result == null){
                      setState((){
                        error = 'Please supply a valid email';
                        loading = false;
                      });
                    }
                    else{
                    Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return RegisterForm();
                      },
                    ),
                  );
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
                login: false,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Login();
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
