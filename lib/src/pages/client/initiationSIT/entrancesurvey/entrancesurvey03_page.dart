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

class InitiationSITEntranceSurvey03Page extends StatefulWidget {
  const InitiationSITEntranceSurvey03Page({Key key}) : super(key: key);

  @override
  _InitiationSITEntranceSurvey03PageState createState() =>
      _InitiationSITEntranceSurvey03PageState();
}

class _InitiationSITEntranceSurvey03PageState
    extends State<InitiationSITEntranceSurvey03Page> {
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
          'Cuestionario Conocimiento',
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
                    'Queremos saber cuánto conoces al respecto del tema, selecciona la alternativa más adecuada para las siguientes preguntas, por favor.',
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
                    ListRadio_01(
                        'Proceso de generar ideas nuevas y creativas.'),
                    ListRadio_02(
                        'Creación de ideas abstractas provenientes de la imaginación.'),
                    ListRadio_03(
                        'Aplicación de la creatividad en una realidad para generar soluciones y oportunidades.'),
                    question_02(),
                    ListRadio_01('Systematic Innovative Thinking.'),
                    ListRadio_02('Systematic Inventive Thinking.'),
                    ListRadio_03('Systematic Innovative Task.'),
                    question_03(),
                    ListRadio_01(
                        'Enfoque para la resolución creativa de problemas y el desarrollo de nuevos productos y / o servicios.'),
                    ListRadio_02(
                        'b)	Enfoque para el desarrollo de ideas creativas.'),
                    ListRadio_03(
                        'Enfoque para la resolución de problemas asignando un nuevo uso a un componente.'),
                    question_04(),
                    ListRadio_01(
                        'a)	Dependencia de atributos, División, Mundo Cerrado, Multiplicación, Unificación de tareas.'),
                    ListRadio_02(
                        'Dependencia de atributos, División, Mundo Cerrado, Multiplicación, Unificación de tareas.'),
                    ListRadio_03(
                        'a)	Dependencia de atributos, División, Mundo Cerrado, Multiplicación, Unificación de tareas.'),
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
          '1.	¿Qué es la innovación?',
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
          '2.	¿Qué significa SIT?',
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
          '3.	¿Cuál es el enfoque de SIT?',
          style: TextStyle(
            fontSize: 16,
            fontFamily: 'Puritan',
          ),
        ),
      ),
    );
  }

  Widget question_04() {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
        child: Text(
          '4.	¿Cuáles son las herramientas de pensamiento para la resolución de problemas?',
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

  Widget ListRadio_01(String alternativa) {
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
        Container(
          width: 280,
          child: Text(
            alternativa,
            style: TextStyle(
              fontFamily: 'Puritan-Regular',
            ),
          ),
        ),
      ],
    );
  }

  Widget ListRadio_02(String alternativa) {
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
        Container(
          width: 280,
          child: Text(
            alternativa,
            style: TextStyle(
              fontFamily: 'Puritan-Regular',
            ),
          ),
        ),
      ],
    );
  }

  Widget ListRadio_03(String alternativa) {
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
        Container(
          width: 280,
          child: Text(
            alternativa,
            style: TextStyle(
              fontFamily: 'Puritan-Regular',
            ),
          ),
        ),
      ],
    );
  }

  Widget ListRadio_04(String alternativa) {
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
        Container(
          width: 280,
          child: Text(
            alternativa,
            style: TextStyle(
              fontFamily: 'Puritan-Regular',
            ),
          ),
        ),
      ],
    );
  }
}
