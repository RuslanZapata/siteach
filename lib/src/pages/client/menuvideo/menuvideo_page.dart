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

class MenuVideoPage extends StatefulWidget {
  const MenuVideoPage({Key key}) : super(key: key);

  @override
  _MenuVideoPageState createState() => _MenuVideoPageState();
}

class _MenuVideoPageState extends State<MenuVideoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFFF1F1F1),
        ),
        // child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buttonUnificacion('videounificacion'),
            buttonSustraccion('videosustraccion'),
            buttonDependencia('videodependencia')
          ],
        ),
      ),
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

  Widget buttonSustraccion(String textLink) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 0),
      child: ElevatedButton.icon(
        label: Icon(
          Icons.horizontal_rule,
          color: MyColors.primaryColorBackground_07,
          size: 48.0,
        ),
        icon: Text(
          'VIDEO\nSUSTRACCIÓN',
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

  Widget buttonDependencia(String textLink) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 0),
      child: ElevatedButton.icon(
        label: Icon(
          Icons.shuffle,
          color: MyColors.primaryColorBackground_07,
          size: 48.0,
        ),
        icon: Text(
          'VIDEO CAMBIO\nDE DEPENDENCIA',
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
