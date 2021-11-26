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
// ignore_for_file: duplicate_ignore
// ignore_for_file: use_key_in_widget_constructors
// ignore_for_file: prefer_const_constructors, duplicate_ignore

// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:concentric_transition/concentric_transition.dart';
import 'package:flutter/cupertino.dart';

class PageData {
  final String title;
  final IconData icon;
  final Color bgColor;
  final Color textColor;
  final String imgs;

  PageData({
    this.title,
    this.icon,
    this.bgColor = Colors.white,
    this.textColor = Colors.black,
    this.imgs,
  });
}

// ignore: use_key_in_widget_constructors
class OnboardingDependencia extends StatelessWidget {
  final List<PageData> pages = [
    PageData(
      icon: Icons.format_size,
      title:
          'Tazas mágicas: Al estar en contacto a altas temperaturas, la taza cambia de color mostrando algún diseño escondido.',
      textColor: Color(0xFFFFFFFF),
// ignore: prefer_const_constructors
      bgColor: Color(0xFF0086A4),
      imgs: 'assets/img/ejemplo/taza.png',
    ),
    PageData(
      icon: Icons.hdr_weak,
      title:
          'Anteojos con polarización: Cuando las lentillas se exponen a la luz se van polarizando.',
      textColor: Color(0xFF38424A),
      bgColor: Color(0xFFFAAA33),
      imgs: 'assets/img/ejemplo/gafas.png',
    ),
    PageData(
      icon: Icons.bubble_chart,
      title:
          'Impresión lenticular: Al cambiar el ángulo o posición de visualización, la imagen de dicha impresión cambia por otra.',
      bgColor: Color(0xFF4A3843),
      textColor: Color(0xFFFAAA33),
      imgs: 'assets/img/ejemplo/lenticular.png',
    ),
    PageData(
      icon: Icons.format_size,
      title:
          'Señal de prevención de altura del puente: variables dimensiones de los autos y mensaje.',
      textColor: Color(0xFFFFFFFF),
// ignore: prefer_const_constructors
      bgColor: Color(0xFF0086A4),
      imgs: 'assets/img/ejemplo/señal_puente.png',
    ),
    PageData(
      icon: Icons.hdr_weak,
      title:
          'Bebidas con indicador de temperatura: Hay algunas cervezas cuya etiqueta cambia de color cuando se encuentra a menor temperatura, para así indicarle al consumidor la temperatura correcta para beberlo.',
      textColor: Color(0xFF38424A),
      bgColor: Color(0xFFFAAA33),
      imgs: 'assets/img/ejemplo/cerveza.png',
    ),
  ];

  List<Color> get colors => pages.map((p) => p.bgColor).toList();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ConcentricPageView(
          colors: colors,
          radius: 30,
          curve: Curves.ease,
          duration: Duration(seconds: 2),
          itemBuilder: (index, value) {
            PageData page = pages[index % pages.length];
            return Container(
              child: Theme(
                data: ThemeData(
                  textTheme: TextTheme(
                    headline6: TextStyle(
                      color: page.textColor,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Helvetica',
                      letterSpacing: 0.0,
                      fontSize: 17,
                    ),
                    subtitle2: TextStyle(
                      color: page.textColor,
                      fontWeight: FontWeight.w300,
                      fontSize: 18,
                    ),
                  ),
                ),
                child: PageCard(page: page),
              ),
            );
          },
        ),
      ),
    );
  }
}

class PageCard extends StatelessWidget {
  final PageData page;

  const PageCard({
    Key key,
    @required this.page,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 30.0,
      ),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _buildPicture(context),
          SizedBox(height: 30),
          _buildText(context),
        ],
      ),
    );
  }

  Widget _buildText(BuildContext context) {
    return Text(
      page.title,
      style: Theme.of(context).textTheme.headline6,
      textAlign: TextAlign.center,
    );
  }

  Widget _buildPicture(
    BuildContext context, {
    double size = 240,
    // double iconSize = 170,
  }) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(60.0)),
        color: page.bgColor
            .withBlue(page.bgColor.blue - 40)
            .withGreen(page.bgColor.green + 20)
            .withRed(page.bgColor.red - 100)
            .withAlpha(90),
      ),
      margin: EdgeInsets.only(
        top: 140,
      ),
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            page.imgs,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
