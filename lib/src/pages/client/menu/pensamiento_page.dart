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
// ignore_for_file: unnecessary_this
// ignore_for_file: duplicate_ignore
import 'package:flutter/material.dart';

class PensamientoPage extends StatefulWidget {
  const PensamientoPage({Key key}) : super(key: key);

  @override
  _PensamientoPageState createState() => _PensamientoPageState();
}

class _PensamientoPageState extends State<PensamientoPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material app',
      home: Scaffold(
        body: PageView(
          controller: PageController(viewportFraction: 0.90),
          children: <Widget>[
            Pagina01(Color(0xFFFFFFFF)),
            Pagina02(Color(0xFF22384A)),
            Pagina03(Color(0xFFFFFFFF)),
          ],
        ),
      ),
    );
  }
}

class Pagina01 extends StatelessWidget {
  final Color color;
  const Pagina01(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: this.color,
      // margin: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            imageBanner('assets/img/logo/PENSAMIENTO.png'),
            containerTitle('PENSAMIENTO'),
            // containerSubTitle('SYSTEMATIC INVENTIVE THINKING'),
            containerDescription(
                'SIT forma parte del pensamiento convergente por las herramientas de pensamiento que utiliza.'),
            containerDescription(
                'Es importante saber, los tipos de pensamiento en base a la generación de ideas.'),
            containerDescription('Para este caso, solo nos centramos en 2.'),
          ],
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
          color: Color(0xFF22384A),
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
          color: Color(0xFF22384A),
          fontSize: 20,
          fontFamily: 'Puritan-Regular',
        ),
      ),
    );
  }
}

class Pagina02 extends StatelessWidget {
  final Color color;
  const Pagina02(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: this.color,
      // margin: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            imageBanner('assets/img/logo/DIVERGENTE.png'),
            containerTitle('PENSAMIENTO DIVERGENTE'),
            // containerSubTitle('SYSTEMATIC INVENTIVE THINKING'),
            containerDescription(
                'Es la generación de múltiples ideas sin un orden específico o soluciones opcionales a un problema.'),
            containerDescription('Ejemplo: Lluvia de ideas.'),
          ],
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
          color: Color(0xFFFFFFFF),
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
          color: Color(0xFFFFFFFF),
          fontSize: 20,
          fontFamily: 'Puritan-Regular',
        ),
      ),
    );
  }
}

class Pagina03 extends StatelessWidget {
  final Color color;
  const Pagina03(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: this.color,
      // margin: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            imageBanner('assets/img/logo/CONVERGENTE.png'),
            containerTitle('PENSAMIENTO CONVERGENTE'),
            // containerSubTitle('SYSTEMATIC INVENTIVE THINKING'),
            containerDescription(
                'Analiza las ideas de forma más sistemática y selecciona la mejor utilizando herramientas lógicas, matemáticas o científicas.'),
          ],
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
          color: Color(0xFF22384A),
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
          color: Color(0xFF22384A),
          fontSize: 20,
          fontFamily: 'Puritan-Regular',
        ),
      ),
    );
  }
}
