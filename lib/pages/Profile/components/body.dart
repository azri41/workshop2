import 'package:flutter/material.dart';
import 'package:workshop2/components/Sidebar/sidebar_layout.dart';
import 'package:workshop2/components/inputField.dart';
import 'package:workshop2/components/passwordField.dart';
import 'package:workshop2/components/rounded_button.dart';
import 'package:workshop2/pages/Profile/components/background.dart';


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
              "ACCOUNT DETAILS",
              style: TextStyle(fontWeight: FontWeight.bold),
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
            InputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            PasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "EDIT",
              press: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SideBarLayout();
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
