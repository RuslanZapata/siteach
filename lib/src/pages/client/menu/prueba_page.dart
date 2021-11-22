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
import 'package:elastic_drawer/elastic_drawer.dart';

class PruebaPage extends StatefulWidget {
  const PruebaPage({Key key}) : super(key: key);

  @override
  _PruebaPageState createState() => _PruebaPageState();
}

class _PruebaPageState extends State<PruebaPage> {
  @override
  Widget build(BuildContext context) {
    return ElasticDrawer(
      mainColor: Colors.white,
      drawerColor: Color(0xFFF2E9E1),
      mainChild: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                // decoration: BoxDecoration(
                //   border: Border.all(
                //     color: Color(0xFFFAAA33).withOpacity(0.5),
                //     width: 8,
                //   ),
                // ),
                // padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
                margin: EdgeInsets.only(top: 10, bottom: 10),
                padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                child: Text(
                  '¿Qué es SIT?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 35,
                    fontFamily: 'Puritan',
                    color: MyColors.primaryColor,
                  ),
                ),
              ),
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
      // ),
      drawerChild: Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                //   width: double.infinity,
                //   decoration: BoxDecoration(
                //     border: Border.all(
                //       color: MyColors.primaryColor.withOpacity(0.23),
                //       width: 4,
                //     ),
                //   ),
                // padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
                margin: EdgeInsets.only(top: 10, bottom: 10),
                padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                child: Text(
                  '¿De dónde parte SIT?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 35,
                    fontFamily: 'Puritan',
                    color: MyColors.primaryColor,
                  ),
                ),
              ),
              containerDescription_10(
                  'SIT forma parte del pensamiento convergente por las herramientas de pensamiento que utiliza.'),
              containerDescription_10(
                  'Es importante saber, los tipos de pensamiento en base a la generación de ideas.'),
              containerDescription_10(
                  'Para este caso, solo nos centramos en 2:'),
              containerDescription(
                  'Es la generación de múltiples ideas sin un orden específico o soluciones opcionales a un problema.\nEjemplo: Lluvia de ideas.'),
              imageBanner01(),
              containerDescription(
                  'Analiza las ideas de forma más sistemática y selecciona la mejor utilizando herramientas lógicas, matemáticas o científicas.'),
            ],
          ),
        ),
      ),
    );
  }

  Widget imageBanner01() {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Image.asset(
        'assets/img/pensamiento.png',
        width: double.infinity,
        // width: 300,
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
        'assets/img/herramienta01.png',
        width: double.infinity,
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
        'Un cepillo de dientes donde la parte posterior sirva, además, para la limpieza de la lengua.',
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
        'Un tomacorriente donde se puedan conectar cables de enchufe y tenga puertos USB para cargar otros dispositivos.',
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
        'Un sofá que pueda convertirse en cama o una cama con almacenamientos.',
        textAlign: TextAlign.justify,
        style: TextStyle(
          fontSize: 14,
          fontFamily: 'Puritan_Regular',
        ),
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
          color: MyColors.primaryColor,
          fontSize: 18,
          fontFamily: 'Puritan-Regular',
        ),
      ),
    );
  }

  Widget containerDescription_10(String description) {
    return Container(
      width: double.infinity,
      // decoration: BoxDecoration(
      //   border: Border.all(
      //     color: MyColors.primaryColor.withOpacity(0.23),
      //     width: 4,
      //   ),
      // ),
      // padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
      // margin: EdgeInsets.only(top: 10, bottom: 10),
      padding: EdgeInsets.all(5),

      child: Text(
        description,
        textAlign: TextAlign.justify,
        style: TextStyle(
          color: MyColors.primaryColor,
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
          color: MyColors.primaryColor,
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
          color: MyColors.primaryColor,
          fontSize: 16,
          fontFamily: 'Puritan-Regular',
        ),
      ),
    );
  }
}

//   Widget buttonReferences(String textLink) {
//     return Container(
//       width: double.infinity,
//       margin: EdgeInsets.symmetric(horizontal: 40, vertical: 0),
//       child: ElevatedButton.icon(
//         icon: Icon(
//           Icons.article,
//           color: MyColors.primaryColorBackground_07,
//           size: 36.0,
//         ),
//         label: Text(
//           'REFERENCIAS',
//           style: TextStyle(
//             fontSize: 32,
//             fontFamily: 'Rationale',
//             color: MyColors.primaryColorBackground_07,
//           ),
//         ),
//         onPressed: () {
//           print('Pressed');
//         },
//         style: ElevatedButton.styleFrom(
//           primary: MyColors.primaryColorBackground_08,
//           shape: new RoundedRectangleBorder(
//             borderRadius: new BorderRadius.circular(20.0),
//           ),
//           padding: EdgeInsets.symmetric(vertical: 25),
//         ),
//       ),
//     );
//   }
// }

// class GreenPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(color: Color(0xff3cba54));
//   }
// }

// class YellowPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(color: Color(0xfff4c20d));
//   }
// }

// class RedPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(color: Color(0xffdb3236));
//   }
// }
