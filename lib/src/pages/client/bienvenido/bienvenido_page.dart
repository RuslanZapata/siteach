// ignore_for_file: prefer_const_literals_to_create_immutables
// ignore_for_file: avoid_unnecessary_containers
// ignore_for_file: sized_box_for_whitespace
// ignore_for_file: prefer_final_fields
// ignore_for_file: unnecessary_new
// ignore_for_file: unused_field
// ignore_for_file: todo
// ignore_for_file: must_call_super
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unused_element
// ignore_for_file: missing_return
// ignore_for_file: unused_local_variable
// ignore_for_file: avoid_print
// ignore_for_file: dead_code
// ignore_for_file: non_constant_identifier_names
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:siteach/src/pages/client/bienvenido/welcome_page.dart';
// import 'package:page_transition/page_transition.dart';
/* import 'package:bottom_navy_bar/bottom_navy_bar.dart'; */

class BienvenidoPage extends StatefulWidget {
  const BienvenidoPage({Key key}) : super(key: key);

  @override
  _BienvenidoPageState createState() => _BienvenidoPageState();
}

class _BienvenidoPageState extends State<BienvenidoPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Clean Code',
        home: AnimatedSplashScreen(
          duration: 5000, //duración de 2 segundos
          splash: Image.asset('assets/img/LOGOF1.png'),
          nextScreen:
              WelcomePage(), //aqui colocar la siguiente pagina que se verá despues del splash
          splashTransition: SplashTransition.fadeTransition,
          /* pageTransitionType: PageTransitionType.scale, */
          backgroundColor: Color(0xFF22384A),
        ));
  }
}
