import 'package:flutter/material.dart';
import 'package:workshop2/components/Sidebar/sidebar_layout.dart';
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

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
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
              onChanged: (value) {},
            ),
            PasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "LOGIN",
              // press: () {
              //     Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) {
              //         // return Home();
              //         return SideBarLayout();
              //       },
              //     ),
              //   );
              // },
              press: () async{
                dynamic result = await _auth.loginAnon();
                if (result == null){
                  print('Error login!!');
                } else {
                  print('Logged in!!!');
                  print(result.uid);
                  Navigator.pop(
                  context);

                //   Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) {
                //       return SideBarLayout();
                //     },
                //   ),
                // );
                }
              }
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
    );
  }
}
