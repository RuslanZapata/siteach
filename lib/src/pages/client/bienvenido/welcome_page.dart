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

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: buttonUnificacion('menu'),
      ),
      // body: Text(
      //   'Hola',
      //   textAlign: TextAlign.center,
      // ),
      //PÁRRAFO 1: AQUÍ DEBE DAR LA BIENVENIDA
      //¡HOLA! (Tamaño de texto como título)

      //PÁRRAFO 2: AQUÍ VA LA PRESENTACIÓN. Lo siguiente va en tamaño de texto más pequeño
      //SITEACH es una aplicación enfocada en el aprendizaje de la metodología de innovación llamada SIT
      //para dar solución a problemas o eventos de una manera inovadora utilizando algunos parámetros.

      //PÁRRAFO 3:
      //Esperamos disfrutes y te sea de utilidad esta experiencia, así también puedas aplicar lo aprendido en tu vida cotidiana y el trabajo.

      //BOTON:
      //Botón que diga: Comencemos y te lleve al Login
      backgroundColor: Color(0xFF7688A0),
    );
  }

  Widget buttonUnificacion(String textLink) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 0),
      child: ElevatedButton.icon(
        label: Icon(
          Icons.add,
          color: MyColors.primaryColorBackground_07,
          size: 48.0,
        ),
        icon: Text(
          'VIDEO UNIFICACIÓN\nDE TAREAS',
          style: TextStyle(
            fontSize: 25,
            fontFamily: 'Rationale',
            color: MyColors.primaryColorBackground_07,
          ),
          textAlign: TextAlign.center,
        ),
        onPressed: () {
          Navigator.pushNamed(context, textLink);
        },
        style: ElevatedButton.styleFrom(
          primary: MyColors.primaryColor,
          shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(20.0),
          ),
          padding: EdgeInsets.symmetric(vertical: 16),
        ),
      ),
    );
  }
}
