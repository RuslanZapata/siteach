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

class Stage02WhatSITPage extends StatefulWidget {
  const Stage02WhatSITPage({Key key}) : super(key: key);

  @override
  _Stage02WhatSITPageState createState() => _Stage02WhatSITPageState();
}

class _Stage02WhatSITPageState extends State<Stage02WhatSITPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primaryColorBackground_01,
      appBar: AppBar(
        title: Text(
          '¿Qué es SIT?',
          style: TextStyle(
            fontFamily: 'Rationale',
            fontSize: 28,
            color: MyColors.primaryColorText_02,
          ),
        ),
        backgroundColor: MyColors.primaryColor,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              containerDescription(
                  'Es la generación de múltiples ideas sin un orden específico o soluciones opcionales a un problema.\nEjemplo: Lluvia de ideas.'),
              imageBanner(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  containerDescription01(
                      'Este método aplica 5 herramientas de pensamiento:\n- Unificación de tareas.\n- Multiplicación.\n- División.\n- Sustracción.\n- Cambio de dependencias.'),
                  // imageBanner01(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  containerDescription02(
                      'Asimismo, se apoya en 2 principios:\n- Mundo cerrado.\n- Cambio de cualidades'),
                  // imageBanner01(),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, 'stage_02/toolsit_01');
        },
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
      // padding: EdgeInsets.only(left: 70, right: 70),
      width: 250,
      child: Image.asset(
        'assets/img/sitimg.png',
        width: double.infinity,
        // width: 300,
      ),
    );
  }

  // Widget imageBanner01() {
  //   return Container(
  //     margin: EdgeInsets.only(left: -20),
  //     width: 150,
  //     child: Image.asset(
  //       'assets/img/vectorflecha.png',
  //       width: double.infinity,
  //       // width: 300,
  //     ),
  //   );
  // }

  Widget containerDescription(String description) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          color: MyColors.primaryColor.withOpacity(0.23),
          width: 4,
        ),
      ),
      // padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
      // margin: EdgeInsets.only(top: 10, bottom: 10),
      padding: EdgeInsets.all(5),

      child: Text(
        description,
        textAlign: TextAlign.justify,
        style: TextStyle(
          fontSize: 18,
          fontFamily: 'Puritan-Regular',
        ),
      ),
    );
  }

  Widget containerDescription01(String description) {
    return Container(
      width: 230,
      decoration: BoxDecoration(
        border: Border.all(
          color: MyColors.primaryColor.withOpacity(0.23),
          width: 4,
        ),
      ),
      padding: EdgeInsets.all(5),
      // margin: EdgeInsets.only(top: 10, bottom: 10),
      margin: EdgeInsets.only(bottom: 10),

      child: Text(
        description,
        textAlign: TextAlign.justify,
        style: TextStyle(
          fontSize: 16,
          fontFamily: 'Puritan-Regular',
        ),
      ),
    );
  }

  Widget containerDescription02(String description) {
    return Container(
      width: 260,
      decoration: BoxDecoration(
        border: Border.all(
          color: MyColors.primaryColor.withOpacity(0.23),
          width: 4,
        ),
      ),
      padding: EdgeInsets.all(5),
      // margin: EdgeInsets.only(top: 10, bottom: 10),
      margin: EdgeInsets.only(bottom: 10),

      child: Text(
        description,
        textAlign: TextAlign.justify,
        style: TextStyle(
          fontSize: 16,
          fontFamily: 'Puritan-Regular',
        ),
      ),
    );
  }
}
