import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:workshop2/models/user.dart';
import 'package:workshop2/pages/Authenticate/authenticate.dart';
import 'package:workshop2/components/Sidebar/sidebar_layout.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<TheUser>(context);

    if(user == null) {
      return Authenticate();
    } else {
      return SideBarLayout();
    }
  }
}