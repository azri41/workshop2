import 'package:flutter/material.dart';
import 'package:workshop2/components/textField.dart';
import 'package:workshop2/constants.dart';

class InputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const InputField({
    Key key,
    this.hintText,
    this.icon,
    this.onChanged, Icon prefixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        validator: (value) => value.isEmpty ? 'Enter an email' : null,
        onChanged: onChanged,
        decoration: InputDecoration(
        icon :Icon(
          icon,
          color: uiSecondaryColor,
        ),
          hintText: hintText, 
          border: InputBorder.none,
        ),
      ),
    );
  }
}