import 'package:flutter/material.dart';
import 'package:workshop2/components/textField.dart';

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
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
        icon :Icon(
          icon,
          color: Colors.amber,
        ),
          hintText: hintText, 
          border: InputBorder.none,
        ),
      ),
    );
  }
}