import 'package:flutter/material.dart';
import 'package:workshop2/components/textField.dart';
import 'package:workshop2/constants.dart';

class PasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const PasswordField({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        cursorColor: uiPrimaryColor,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: uiPrimaryColor,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: uiPrimaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
