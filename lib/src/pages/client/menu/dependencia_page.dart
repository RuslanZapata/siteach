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
// ignore_for_file: use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:siteach/src/utils/my_colors.dart';

class DependenciaPage extends StatefulWidget {
  const DependenciaPage({Key key}) : super(key: key);

  @override
  _DependenciaPageState createState() => _DependenciaPageState();
}

class _DependenciaPageState extends State<DependenciaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              imageBanner('assets/img/logo/CAMBIO_DEPENDENCIA.png'),
              containerTitle('CAMBIO DE DEPENDENCIAS'),
              // containerSubTitle('SYSTEMATIC INVENTIVE THINKING'),
              containerDescription(
                  'Solucionar un problema creando nuevas relaciones o eliminando alguna ya existente entre atributos de un producto.'),
              containerDescription(
                  'Objetivo: Crear, cambiar o eliminar dependencias entre variables de un producto y su ambiente.'),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  buttonVerEjemplo('dependenciaejemplo'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget imageBanner(imageUrl) {
    return Container(
      width: double.infinity,
      height: 250,
      margin: EdgeInsets.only(top: 80, bottom: 40),
      padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
      child: Image(
        image: AssetImage(
          imageUrl,
        ),
      ),
    );
  }

  Widget containerTitle(String description) {
    return Container(
      width: double.infinity,
      // padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
      margin: EdgeInsets.only(top: 10, bottom: 30),
      // padding: EdgeInsets.all(5),
      child: Text(
        description,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: MyColors.primaryColor,
          fontSize: 48,
          fontFamily: 'Rationale',
        ),
      ),
    );
  }

  Widget containerDescription(String description) {
    return Container(
      width: double.infinity,
      // padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
      margin: EdgeInsets.only(right: 30, left: 30, bottom: 24),
      // padding: EdgeInsets.all(5),
      child: Text(
        description,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: MyColors.primaryColor,
          fontSize: 20,
          fontFamily: 'Puritan-Regular',
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
