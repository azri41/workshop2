import 'package:flutter/material.dart';
import 'package:workshop2/constants.dart';
import 'package:workshop2/models/AMedicine.dart';


class Description extends StatelessWidget {
  const Description({
    Key key,
    @required this.aMedicine,
  }) : super(key: key);

  final AMedicine aMedicine;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Text(
        aMedicine.description,
        style: TextStyle(height: 2.0),
      ),
    );
  }
}
