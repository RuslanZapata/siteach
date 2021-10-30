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
import 'package:siteach/src/pages/client/initiationSIT/entrancesurvey/opcionlist.dart';
import 'package:siteach/src/utils/my_colors.dart';

class InitiationSITEntranceSurvey02Page extends StatefulWidget {
  const InitiationSITEntranceSurvey02Page({Key key}) : super(key: key);

  @override
  _InitiationSITEntranceSurvey02PageState createState() =>
      _InitiationSITEntranceSurvey02PageState();
}

class _InitiationSITEntranceSurvey02PageState
    extends State<InitiationSITEntranceSurvey02Page> {
  List<OpcionList> opcionList;
  int selectedRadio;
  int selectedRadioTitle;

  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
    selectedRadioTitle = 0;
    // opcionList.getOpcionList();
  }

  setSelectedRadioTitle(int val) {
    setState(() {
      selectedRadioTitle = val;
    });
  }

  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  bool _value = false;
  int val = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primaryColorBackground_01,
      appBar: AppBar(
        title: Text(
          'Cuestionario Motivación',
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
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  // padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
                  padding: EdgeInsets.fromLTRB(0, 15, 0, 5),
                  child: Text(
                    'Queremos saber cómo te sientes, selecciona la alternativa más adecuada para las siguientes preguntas, por favor.',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Puritan-Regular',
                    ),
                  ),
                ),
              ),
              Container(
                child: Column(
                  children: [
                    question_01(),
                    ListRadio_01(),
                    ListRadio_02(),
                    ListRadio_03(),
                    ListRadio_04(),
                    ListRadio_05(),
                    question_02(),
                    ListRadio_01(),
                    ListRadio_02(),
                    ListRadio_03(),
                    ListRadio_04(),
                    ListRadio_05(),
                    question_03(),
                    ListRadio_01(),
                    ListRadio_02(),
                    ListRadio_03(),
                    ListRadio_04(),
                    ListRadio_05(),
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

  Widget question_01() {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: Text(
          '1.	¿Qué tan satisfecho (a) se encuentra respecto al método de resolución de problemas que aplica actualmente en su vida diaria?',
          style: TextStyle(
            fontSize: 16,
            fontFamily: 'Puritan',
          ),
        ),
      ),
    );
  }

  Widget question_02() {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: Text(
          '2.	¿Qué tan satisfecho (a) se encuentra respecto al uso de un aplicativo móvil como apoyo de aprendizaje de algún tema?',
          style: TextStyle(
            fontSize: 16,
            fontFamily: 'Puritan',
          ),
        ),
      ),
    );
  }

  Widget question_03() {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: Text(
          '3.	¿Qué tan satisfecho (a) se encuentra respecto al contenido del tema de aprendizaje a través de una aplicación móvil?',
          style: TextStyle(
            fontSize: 16,
            fontFamily: 'Puritan',
          ),
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

  Widget ListRadio_01() {
    return Row(
      children: [
        Radio(
          value: 1,
          groupValue: selectedRadio,
          activeColor: MyColors.primaryColor,
          onChanged: (val) {
            setSelectedRadio(val);
            print('value: $val');
          },
        ),
        Text(
          'Nada satisfecho',
          style: TextStyle(
            fontFamily: 'Puritan-Regular',
          ),
        ),
      ],
    );
  }

  Widget ListRadio_02() {
    return Row(
      children: [
        Radio(
          value: 2,
          groupValue: selectedRadio,
          activeColor: MyColors.primaryColor,
          onChanged: (val) {
            setSelectedRadio(val);
            print('value: $val');
          },
        ),
        Text(
          'Poco satisfecho',
          style: TextStyle(
            fontFamily: 'Puritan-Regular',
          ),
        ),
      ],
    );
  }

  Widget ListRadio_03() {
    return Row(
      children: [
        Radio(
          value: 3,
          groupValue: selectedRadio,
          activeColor: MyColors.primaryColor,
          onChanged: (val) {
            setSelectedRadio(val);
            print('value: $val');
          },
        ),
        Text(
          'Ni poco ni muy satisfecho',
          style: TextStyle(
            fontFamily: 'Puritan-Regular',
          ),
        ),
      ],
    );
  }

  Widget ListRadio_04() {
    return Row(
      children: [
        Radio(
          value: 4,
          groupValue: selectedRadio,
          activeColor: MyColors.primaryColor,
          onChanged: (val) {
            setSelectedRadio(val);
            print('value: $val');
          },
        ),
        Text(
          'Muy satisfecho',
          style: TextStyle(
            fontFamily: 'Puritan-Regular',
          ),
        ),
      ],
    );
  }

  Widget ListRadio_05() {
    return Row(
      children: [
        Radio(
          value: 5,
          groupValue: selectedRadio,
          activeColor: MyColors.primaryColor,
          onChanged: (val) {
            setSelectedRadio(val);
            print('value: $val');
          },
        ),
        Text(
          'Bastante satisfecho',
          style: TextStyle(
            fontFamily: 'Puritan-Regular',
          ),
        ),
      ],
    );
  }
}
