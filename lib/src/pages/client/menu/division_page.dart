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

class DivisionPage extends StatefulWidget {
  const DivisionPage({Key key}) : super(key: key);

  @override
  _DivisionPageState createState() => _DivisionPageState();
}

class _DivisionPageState extends State<DivisionPage> {
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
              textTitle('DIVISIÓN'),
              imageBanner('assets/img/divisionDescripcion.png'),
              Container(
                child: Column(
                  children: [
                    textDescripcion(
                        '¿Puedes pensar en algunos ejemplos en la vida real donde se aplicó esta herramienta?'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        buttonVerEjemplo('divisionejemplo'),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget imageBanner(String textlink) {
    return Container(
      // margin: EdgeInsets.only(
      //     top: 100, bottom: MediaQuery.of(context).size.height * 0.1),
      padding: EdgeInsets.only(left: 20, right: 20),
      margin: EdgeInsets.only(top: 10, bottom: 20),
      child: Image.asset(
        textlink,
        width: double.infinity,
        // width: 300,
      ),
    );
  }

  Widget textDescripcion(String descripcion) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        width: 300,
        padding: EdgeInsets.only(bottom: 5),
        margin: EdgeInsets.only(bottom: 0, top: 15),
        child: Text(
          descripcion,
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'Puritan_Regular',
          ),
        ),
      ),
    );
  }

  Widget textTitle(String titulo) {
    return Container(
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
        titulo,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 18,
          fontFamily: 'Puritan',
          color: MyColors.primaryColor,
        ),
      ),
    );
  }

  Widget buttonVerEjemplo(String textLink) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
      width: 180,
      child: ElevatedButton.icon(
        label: Icon(
          Icons.chevron_right_outlined,
          color: MyColors.primaryColorBackground_07,
          size: 30.0,
        ),
        icon: Text(
          'Ver Ejemplo',
          style: TextStyle(
            fontSize: 18,
            // fontFamily: 'Rationale',
            color: MyColors.primaryColorBackground_07,
          ),
        ),
        onPressed: () {
          Navigator.pushNamed(context, textLink);
        },
        style: ElevatedButton.styleFrom(
          primary: MyColors.primaryColor,
          shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(20.0),
          ),
          // padding: EdgeInsets.symmetric(vertical: 5),
        ),
      ),
    );
  }
}
