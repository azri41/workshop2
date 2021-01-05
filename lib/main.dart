import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:workshop2/constants.dart';
import 'package:workshop2/pages/Cart/cart_model.dart';
import 'package:workshop2/pages/wrapper.dart';
import 'package:workshop2/services/auth.dart';

import 'models/user.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp(
    model: CartModel(),
  ));
}

class MyApp extends StatelessWidget {
  final CartModel model;

  const MyApp({Key key, @required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScopedModel<CartModel>(
        model: model,
        child: StreamProvider<TheUser>.value(
        value: AuthService().user,
        child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'iCare',
        theme:  ThemeData(
          primaryColor: uiPrimaryColor,
          scaffoldBackgroundColor: Colors.white,
        ),
          home: Wrapper(),
        ),
      ),
    );
  }
}