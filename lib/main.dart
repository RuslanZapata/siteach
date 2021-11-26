// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:siteach/src/pages/case/page/home_page.dart';
import 'package:siteach/src/pages/client/bienvenido/bienvenido_page.dart';
import 'package:siteach/src/pages/client/bienvenido/welcome_page.dart';
import 'package:siteach/src/pages/client/games/home_screen.dart';
import 'package:siteach/src/pages/client/menu/cualidades_page.dart';
import 'package:siteach/src/pages/client/menu/cualidadesejemplo_page.dart';

import 'package:siteach/src/pages/client/menu/dependencia_page.dart';
import 'package:siteach/src/pages/client/menu/dependenciaejemplo_page.dart';
import 'package:siteach/src/pages/client/menu/division_page.dart';
import 'package:siteach/src/pages/client/menu/divisionejemplo_page.dart';
import 'package:siteach/src/pages/client/menu/menumedios_page.dart';
import 'package:siteach/src/pages/client/menu/menuprincipios_page.dart';
import 'package:siteach/src/pages/client/menu/multiplicacion_page.dart';
import 'package:siteach/src/pages/client/menu/multiplicacionejemplo_page.dart';
import 'package:siteach/src/pages/client/menu/mundocerrado_page.dart';
import 'package:siteach/src/pages/client/menu/mundocerradoejemplo_page.dart';
import 'package:siteach/src/pages/client/menu/pensamiento_page.dart';
import 'package:siteach/src/pages/client/menu/sit_page.dart';
import 'package:siteach/src/pages/client/menu/referencias_page.dart';
import 'package:siteach/src/pages/client/menu/sustraccion_page.dart';
import 'package:siteach/src/pages/client/menu/sustraccionejemplo_page.dart';
import 'package:siteach/src/pages/client/menu/unificacion_page.dart';
import 'package:siteach/src/pages/client/menu/unificacionejemplo_page.dart';
import 'package:siteach/src/pages/client/menu/menu_page.dart';
import 'package:siteach/src/pages/client/menu/menusit_page.dart';
import 'package:siteach/src/pages/client/menu/menutools_page.dart';
import 'package:siteach/src/pages/client/menuvideo/dependencia/dependenciavideo_page.dart';
import 'package:siteach/src/pages/client/menuvideo/menuvideo_page.dart';
import 'package:siteach/src/pages/client/menuvideo/sustraccion/sustraccionvideo_page.dart';
import 'package:siteach/src/pages/client/menuvideo/unificacion/unificacionvideo_page.dart';
// Login y Sign Up
import 'package:siteach/src/pages/login/login_page.dart';
import 'package:siteach/src/pages/signup/signup_page.dart';
// Utils
// import 'package:siteach/src/utils/my_colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SITEACH',
      // theme: ThemeData(
      //   primaryColor: MyColors.primaryColor,
      // ),
      initialRoute: 'menu',
      routes: {
        // Login y Sign Up
        'login': (BuildContext context) => LoginPage(),
        'signup': (BuildContext context) => SignUpPage(),
        // Menu
        'menu': (BuildContext context) => MenuPage(),
        'menusit': (BuildContext context) => MenuSITPage(),
        'menutools': (BuildContext context) => MenuToolsPage(),
        'menuprincipios': (BuildContext context) => MenuPrincipiosPage(),
        'menumedios': (BuildContext context) => MenuMediosPage(),
        'sit': (BuildContext context) => SITPage(),
        'unificacion': (BuildContext context) => UnificacionPage(),
        'unificacionejemplo': (BuildContext context) => OnboardingUnificacion(),
        'multiplicacion': (BuildContext context) => MultiplicacionPage(),
        'multiplicacionejemplo': (BuildContext context) =>
            OnboardingMultiplicacion(),
        'sustraccion': (BuildContext context) => SustraccionPage(),
        'sustraccionejemplo': (BuildContext context) => OnboardingSustraccion(),
        'division': (BuildContext context) => DivisionPage(),
        'divisionejemplo': (BuildContext context) => OnboardingDivision(),
        'dependencia': (BuildContext context) => DependenciaPage(),
        'dependenciaejemplo': (BuildContext context) => OnboardingDependencia(),
        'screen': (BuildContext context) => home_screen(),
        'cases': (BuildContext context) => HomePage(),
        'referencias': (BuildContext context) => ReferenciasPage(),
        'cualidades': (BuildContext context) => CualidadesPage(),
        'cualidadesejemplo': (BuildContext context) => CualidadesEjemploPage(),
        'mundocerrado': (BuildContext context) => MundoCerradoPage(),
        'mundocerradoejemplo': (BuildContext context) =>
            MundoCerradoEjemploPage(),
        'pensamiento': (BuildContext context) => PensamientoPage(),
        'menuvideo': (BuildContext context) => MenuVideoPage(),
        'videosustraccion': (BuildContext context) => SustraccionVideoPage(),
        'videounificacion': (BuildContext context) => UnificacionVideoPage(),
        'videodependencia': (BuildContext context) => DependenciaVideoPage(),
        'bienvenido': (BuildContext context) => BienvenidoPage(),
        'welcome': (BuildContext context) => WelcomePage(),
      },
    );
  }
}
