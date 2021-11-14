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

class Stage04MenuCaseSurveyPage extends StatefulWidget {
  const Stage04MenuCaseSurveyPage({Key key}) : super(key: key);

  @override
  _Stage04MenuCaseSurveyPageState createState() =>
      _Stage04MenuCaseSurveyPageState();
}

class _Stage04MenuCaseSurveyPageState extends State<Stage04MenuCaseSurveyPage> {
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
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 16.0),
                width: double.infinity,
                height: 277,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  image: DecorationImage(
                    image: AssetImage('assets/img/menu_case_survey_01.png'),
                    alignment: Alignment.topCenter,
                    fit: BoxFit.fill,
                  ),
                ),
//        color: Colors.grey,
                child: buttonSignUp('CASOS', 'stage_04/caso_01'),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 16.0),
                width: double.infinity,
                height: 277,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  image: DecorationImage(
                    image: AssetImage('assets/img/menu_case_survey_02.png'),
                    alignment: Alignment.topCenter,
                    fit: BoxFit.fill,
                  ),
                ),
//        color: Colors.grey,
                child: buttonSignUp('PREGUNTAS', 'stage_04/survey_03'),
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
            fontSize: 50,
            fontFamily: 'Rationale',
            color: MyColors.primaryColorBackground_05,
          ),
        ),
        style: ElevatedButton.styleFrom(
          // primary: Colors.black.withOpacity(0.1),
          primary: Colors.white.withOpacity(0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          padding: EdgeInsets.symmetric(vertical: 35),
        ),
      ),
    );
  }

  // Widget buttonSignUp(String textButton) {
  //   return Container(
  //     width: double.infinity,
  //     margin: EdgeInsets.symmetric(horizontal: 2, vertical: 0),
  //     child: ElevatedButton(
  //       onPressed: () {},
  //       child: Text(
  //         textButton,
  //         style: TextStyle(
  //           fontSize: 16,
  //           fontFamily: 'Mulish',
  //           color: MyColors.primaryColorText_02,
  //         ),
  //       ),
  //       style: ElevatedButton.styleFrom(
  //         primary: Colors.black.withOpacity(0.1),
  //         shape: RoundedRectangleBorder(
  //           borderRadius: BorderRadius.circular(30),
  //         ),
  //         padding: EdgeInsets.symmetric(vertical: 35),
  //       ),
  //     ),
  //   );
  // }
}
