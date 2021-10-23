// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:siteach/src/pages/login/login_page.dart';
import 'package:siteach/src/pages/signup/signup_page.dart';
import 'package:siteach/src/utils/my_colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Delivery App Flutter',
      theme: ThemeData(
        primaryColor: MyColors.primaryColor,
      ),
      initialRoute: 'login',
      routes: {
        'login': (BuildContext context) => LoginPage(),
        'signup': (BuildContext context) => SignUpPage(),
      },
    );
  }
}
