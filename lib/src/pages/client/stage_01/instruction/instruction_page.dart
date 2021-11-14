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
// ignore_for_file: duplicate_ignore
// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:siteach/src/utils/my_colors.dart';

class Stage01InstructionPage extends StatefulWidget {
  const Stage01InstructionPage({Key key}) : super(key: key);

  @override
  _Stage01InstructionPageState createState() => _Stage01InstructionPageState();
}

class _Stage01InstructionPageState extends State<Stage01InstructionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primaryColorBackground_01,
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              imageBanner(),
              InstructionContainer(),
              buttonLogin(),
            ],
          ),
        ),
      ),
    );
  }

  Widget imageBanner() {
    return Container(
      margin: EdgeInsets.only(
          top: 160, bottom: MediaQuery.of(context).size.height * 0.1),
      child: Image.asset(
        'assets/img/instrucciones.png',
        width: 300,
      ),
    );
  }

  Widget InstructionContainer() {
    return Container(
      margin: EdgeInsets.only(left: 30, right: 30),
      padding: EdgeInsets.only(left: 30, right: 30, top: 50, bottom: 50),
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          color: MyColors.primaryColor.withOpacity(0.23),
          width: 4,
        ),
      ),
      child: Column(
        children: [
          Container(
            child: Text(
              'Te presentaremos 3 casos. Léelos, analízalos y responde.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Quando',
              ),
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Container(
            child: Text(
              '¿Qué harías tú para solucionar lo expuesto en cada caso?',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Quando',
              ),
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Container(
            child: Text(
              'Escribe tu respuesta de una manera breve y concisa.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Quando',
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buttonLogin() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 50),
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, 'stage_01/caso_01');
        },
        child: Text(
          'Comencemos',
          style: TextStyle(color: MyColors.primaryColorText_02),
        ),
        style: ElevatedButton.styleFrom(
          primary: MyColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          padding: EdgeInsets.symmetric(vertical: 15),
        ),
      ),
    );
  }
}
