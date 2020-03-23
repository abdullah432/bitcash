import 'package:bitcash/Helping/colors.dart';
import 'package:bitcash/screens/account.dart';
import 'package:bitcash/screens/login.dart';
import 'package:flutter/material.dart';

import 'screens/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bitcash',
      theme: ThemeData(
        primarySwatch: CustomColor.materialPrimaryColor
      ),
      // home: LoginPage()
      home: MyAccount(),
    );
  }
}

