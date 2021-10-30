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
import 'package:flutter/material.dart';
import 'package:siteach/src/utils/my_colors.dart';

class Stage04ToolSIT02Page extends StatefulWidget {
  const Stage04ToolSIT02Page({Key key}) : super(key: key);

  @override
  _Stage04ToolSIT02PageState createState() => _Stage04ToolSIT02PageState();
}

class _Stage04ToolSIT02PageState extends State<Stage04ToolSIT02Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primaryColorBackground_01,
      appBar: AppBar(
        title: Text(
          'Herramientas',
          style: TextStyle(
            fontFamily: 'Rationale',
            fontSize: 28,
            color: MyColors.primaryColorText_02,
          ),
        ),
        backgroundColor: MyColors.primaryColor,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: MyColors.primaryColor.withOpacity(0.23),
                    width: 4,
                  ),
                ),
                // padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
                margin: EdgeInsets.only(top: 10, bottom: 10),
                padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                child: Text(
                  'MULTIPLICACIÓN',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Puritan-Regular',
                  ),
                ),
              ),
              imageBanner(),
              Container(
                child: Column(
                  children: [
                    question_04(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        buttonCase('Ver ejemplos'),
                      ],
                    ),
                    question_05(),
                    question_06(),
                    question_07(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: Icon(
          Icons.arrow_forward_ios,
          color: MyColors.primaryColorText_02,
        ),
        backgroundColor: MyColors.primaryColor,
      ),
    );
  }

  Widget imageBanner() {
    return Container(
      // margin: EdgeInsets.only(
      //     top: 100, bottom: MediaQuery.of(context).size.height * 0.1),
      padding: EdgeInsets.only(left: 20, right: 20),
      margin: EdgeInsets.only(top: 10, bottom: 20),
      child: Image.asset(
        'assets/img/herramienta02.png',
        // width: 300,
      ),
    );
  }

  Widget question_04() {
    return Align(
      alignment: Alignment.center,
      child: Container(
        width: 280,
        padding: EdgeInsets.only(bottom: 5),
        margin: EdgeInsets.only(bottom: 0, top: 15),
        child: Text(
          '¿Puedes pensar en algunos ejemplos en la vida real donde se aplicó esta herramienta?',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14,
            fontFamily: 'Puritan_Regular',
          ),
        ),
      ),
    );
  }

  Widget question_05() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(bottom: 5),
      margin: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: MyColors.primaryColorBackground_05,
            width: 3.0,
          ),
        ),
      ),
      child: Text(
        'En una razuradora, se duplica la cuchilla y se coloca en ángulos diferentes para tener mayores beneficios.',
        textAlign: TextAlign.justify,
        style: TextStyle(
          fontSize: 14,
          fontFamily: 'Puritan_Regular',
        ),
      ),
    );
  }

  Widget question_06() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(bottom: 5),
      margin: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: MyColors.primaryColorBackground_05,
            width: 3.0,
          ),
        ),
      ),
      child: Text(
        'Se añade un lente fotográfico con mayor resolución a una cámara profesional para mejorar la calidad de las fotos.',
        textAlign: TextAlign.justify,
        style: TextStyle(
          fontSize: 14,
          fontFamily: 'Puritan_Regular',
        ),
      ),
    );
  }

  Widget question_07() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(bottom: 5),
      margin: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: MyColors.primaryColorBackground_05,
            width: 3.0,
          ),
        ),
      ),
      child: Text(
        'Añadir ruedas auxiliares a una bicileta.',
        textAlign: TextAlign.justify,
        style: TextStyle(
          fontSize: 14,
          fontFamily: 'Puritan_Regular',
        ),
      ),
    );
  }

  Widget welcomeContainer() {
    return Container(
      // margin: EdgeInsets.only(left: 30, right: 30),
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
              'Gracias por estar aquí.',
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
              'Antes de comenzar, necesitamos que llenes algunas preguntas.',
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
              'Esto es con el fin de medir el progreso al final del curso.',
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

  Widget buttonCase(String textButton) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
      width: 150,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          textButton,
          style: TextStyle(
            color: MyColors.primaryColorText_02,
            fontSize: 16,
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: MyColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          padding: EdgeInsets.symmetric(vertical: 5),
        ),
      ),
    );
  }
}
