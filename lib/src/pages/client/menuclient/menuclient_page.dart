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

class MenuClientPage extends StatefulWidget {
  const MenuClientPage({Key key}) : super(key: key);

  @override
  _MenuClientPageState createState() => _MenuClientPageState();
}

class _MenuClientPageState extends State<MenuClientPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primaryColorBackground_01,
      appBar: AppBar(
        title: Text(
          'Menú',
          style: TextStyle(
            fontFamily: 'Rationale',
            fontSize: 28,
            color: MyColors.primaryColorText_02,
          ),
        ),
        backgroundColor: MyColors.primaryColor,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 16.0),
                width: double.infinity,
                height: 178,
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  image: DecorationImage(
                    image: AssetImage('assets/img/container_01.png'),
                    alignment: Alignment.topCenter,
                    fit: BoxFit.fill,
                  ),
                ),
//        color: Colors.grey,
                child: buttonSignUp(
                    'Etapa 1: ¿Qué harías tú?', 'stage_01/instructionpage'),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 16.0),
                width: double.infinity,
                height: 178,
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  image: DecorationImage(
                    image: AssetImage('assets/img/container_02.png'),
                    alignment: Alignment.topCenter,
                    fit: BoxFit.fill,
                  ),
                ),
//        color: Colors.grey,
                child: buttonSignUp('Etapa 2: ¡Aprendamos un poco!',
                    'stage_02/instructionpage'),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 16.0),
                width: double.infinity,
                height: 178,
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  image: DecorationImage(
                    image: AssetImage('assets/img/container_03.png'),
                    alignment: Alignment.topCenter,
                    fit: BoxFit.fill,
                  ),
                ),
//        color: Colors.grey,
                child: buttonSignUp(
                    'Etapa 3: Recursos de apoyo', 'stage_03/instructionpage'),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 16.0),
                width: double.infinity,
                height: 178,
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  image: DecorationImage(
                    image: AssetImage('assets/img/container_04.png'),
                    alignment: Alignment.topCenter,
                    fit: BoxFit.fill,
                  ),
                ),
//        color: Colors.grey,
                child: buttonSignUp(
                    'Etapa 4: Evalúate', 'stage_04/instructionpage'),
              ),
            ],
          ),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   tooltip: 'Increment',
      //   child: Icon(
      //     Icons.arrow_forward_ios,
      //     color: MyColors.primaryColorText_02,
      //   ),
      //   backgroundColor: MyColors.primaryColor,
      // ),
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

  Widget buttonSignUp(String textButton, String textLink) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 2, vertical: 0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, textLink);
        },
        child: Text(
          textButton,
          style: TextStyle(
            fontSize: 16,
            fontFamily: 'Mulish',
            color: MyColors.primaryColorText_02,
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: Colors.black.withOpacity(0.1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          padding: EdgeInsets.symmetric(vertical: 35),
        ),
      ),
    );
  }
}
