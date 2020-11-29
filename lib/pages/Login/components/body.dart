import 'package:flutter/material.dart';
import 'package:workshop2/components/Sidebar/sidebar_layout.dart';
import 'package:workshop2/components/haveAccountCheck.dart';
import 'package:workshop2/components/inputField.dart';
import 'package:workshop2/components/passwordField.dart';
import 'package:workshop2/components/rounded_button.dart';
import 'package:workshop2/pages/Login/components/background.dart';
import 'package:flutter_svg/svg.dart';
import 'package:workshop2/pages/SignUp/signup_screen.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);


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
              press: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      // return Home();
                      return SideBarLayout();
                    },
                  ),
                );
              },
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
