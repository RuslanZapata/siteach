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

class SITPage extends StatefulWidget {
  const SITPage({Key key}) : super(key: key);

  @override
  _SITPageState createState() => _SITPageState();
}

class _SITPageState extends State<SITPage> {
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
            imageBanner('assets/img/logo/SIT_LOGO.png'),
            containerTitle('SIT'),
            containerSubTitle('SYSTEMATIC INVENTIVE THINKING'),
            // containerSubTitle('SYSTEMATIC INVENTIVE THINKING'),
            containerDescription(
                'El Pensamiento Inventivo Sistemático se enfoca en la resolución de problemas de una manera creativa para el desarrollo de nuevos productos.'),
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
      margin: EdgeInsets.only(top: 10),
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

  Widget containerSubTitle(String description) {
    return Container(
      width: double.infinity,
      // padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
      margin: EdgeInsets.only(top: 5, bottom: 30),
      // padding: EdgeInsets.all(5),
      child: Text(
        description,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Color(0xFF22384A),
          fontSize: 24,
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
            imageBanner('assets/img/logo/HERRAMIENTAS_SIT.png'),
            containerTitle('HERRAMIENTAS'),
            // containerSubTitle('SYSTEMATIC INVENTIVE THINKING'),
            containerDescription(
                'Este método aplica 5 herramientas de pensamiento:'),
            containerDescription(
                '  - Unificación de tareas.\n  - Multiplicación.\n  - División.\n  - Sustracción.\n  - Cambio de dependencias.'),
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
        textAlign: TextAlign.justify,
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
            imageBanner('assets/img/logo/PRINCIPIOS_SIT.png'),
            containerTitle('PRINCIPIOS'),
            // containerSubTitle('SYSTEMATIC INVENTIVE THINKING'),
            containerDescription('Asimismo, se apoya en 2 principios:'),
            containerDescription(
                '  - Mundo cerrado.\n  - Cambio de cualidades.'),
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
        textAlign: TextAlign.justify,
        style: TextStyle(
          color: Color(0xFF22384A),
          fontSize: 20,
          fontFamily: 'Puritan-Regular',
        ),
      ),
    );
  }
}
