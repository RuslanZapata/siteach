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
class OnboardingMultiplicacion extends StatelessWidget {
  final List<PageData> pages = [
    PageData(
      icon: Icons.format_size,
      title:
          'Una razuradora: al duplicar la cuchilla en diferentes ángulos, tenemos mayores beneficios.',
      textColor: Color(0xFFFFFFFF),
// ignore: prefer_const_constructors
      bgColor: Color(0xFF0086A4),
      imgs: 'assets/img/ejemplo/razuradora.png',
    ),
    PageData(
      icon: Icons.hdr_weak,
      title:
          'Una cámara profesional: se añaden diferentes lentes fotográficos para una mejor calidad de fotos.',
      textColor: Color(0xFF38424A),
      bgColor: Color(0xFFFAAA33),
      imgs: 'assets/img/ejemplo/lentes.png',
    ),
    PageData(
      icon: Icons.bubble_chart,
      title:
          'Una bicicleta con ruedas auxiliares: agregamos 2 ruedas más para aquellos que aprenden a manejar por primera vez.',
      bgColor: Color(0xFF4A3843),
      textColor: Color(0xFFFAAA33),
      imgs: 'assets/img/ejemplo/bicicleta.png',
    ),
    PageData(
      icon: Icons.format_size,
      title:
          'Guitarra con doble mástil: Algunos artistas emplean guitarras de doble mástil para poder ir intercambiado entre seis y doce cuerdas de manera más rápida.',
      textColor: Color(0xFFFFFFFF),
// ignore: prefer_const_constructors
      bgColor: Color(0xFF0086A4),
      imgs: 'assets/img/ejemplo/GUITARRA.png',
    ),
    PageData(
      icon: Icons.hdr_weak,
      title:
          'Timbre para restaurante: A este timbre de restaurante, se le añade más botones con distintas funciones: Para pedir la orden, para pedir la cuenta y para avisar que están desocupando la mesa.',
      textColor: Color(0xFF38424A),
      bgColor: Color(0xFFFAAA33),
      imgs: 'assets/img/ejemplo/timbre_restaurant.png',
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
