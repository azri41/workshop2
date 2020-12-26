import 'package:flutter/material.dart';
import 'package:workshop2/constants.dart';
import 'package:workshop2/models/CMedicine.dart';

class Description extends StatelessWidget {
  const Description({
    Key key,
    @required this.cMedicine,
  }) : super(key: key);

  final CMedicine cMedicine;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Text(
        cMedicine.description,
        style: TextStyle(height: 2.0),
      ),
    );
  }
}
