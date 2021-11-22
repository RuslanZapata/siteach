// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:siteach/src/pages/case/page/home_page.dart';
import 'package:siteach/src/pages/client/games/home_screen.dart';
// initiationSIT
import 'package:siteach/src/pages/client/initiationSIT/instruction/instruction_page.dart';
import 'package:siteach/src/pages/client/initiationSIT/entrancesurvey/entrancesurvey01_page.dart';
import 'package:siteach/src/pages/client/initiationSIT/entrancesurvey/entrancesurvey02_page.dart';
import 'package:siteach/src/pages/client/initiationSIT/entrancesurvey/entrancesurvey03_page.dart';
import 'package:siteach/src/pages/client/menu/dependencia_page.dart';
import 'package:siteach/src/pages/client/menu/dependenciaejemplo_page.dart';
import 'package:siteach/src/pages/client/menu/division_page.dart';
import 'package:siteach/src/pages/client/menu/divisionejemplo_page.dart';
import 'package:siteach/src/pages/client/menu/menumedios_page.dart';
import 'package:siteach/src/pages/client/menu/menuprincipios_page.dart';
import 'package:siteach/src/pages/client/menu/multiplicacion_page.dart';
import 'package:siteach/src/pages/client/menu/multiplicacionejemplo_page.dart';
import 'package:siteach/src/pages/client/menu/prueba_page.dart';
import 'package:siteach/src/pages/client/menu/sustraccion_page.dart';
import 'package:siteach/src/pages/client/menu/sustraccionejemplo_page.dart';
import 'package:siteach/src/pages/client/menu/unificacion_page.dart';
import 'package:siteach/src/pages/client/menu/unificacionejemplo_page.dart';
import 'package:siteach/src/pages/client/menuclient/menuclient_page.dart';
import 'package:siteach/src/pages/client/menu/menu_page.dart';
import 'package:siteach/src/pages/client/menu/menusit_page.dart';
import 'package:siteach/src/pages/client/menu/menutools_page.dart';
// stage_01
import 'package:siteach/src/pages/client/stage_01/instruction/instruction_page.dart';
import 'package:siteach/src/pages/client/stage_01/caso/case01_page.dart';
import 'package:siteach/src/pages/client/stage_01/caso/case02_page.dart';
import 'package:siteach/src/pages/client/stage_01/caso/case03_page.dart';
// stage_02
import 'package:siteach/src/pages/client/stage_02/instruction/instruction_page.dart';
import 'package:siteach/src/pages/client/stage_02/thought/thought_page.dart';
import 'package:siteach/src/pages/client/stage_02/toolsit/toolsit01_page.dart';
import 'package:siteach/src/pages/client/stage_02/toolsit/toolsit02_page.dart';
import 'package:siteach/src/pages/client/stage_02/toolsit/toolsit03_page.dart';
import 'package:siteach/src/pages/client/stage_02/toolsit/toolsit04_page.dart';
import 'package:siteach/src/pages/client/stage_02/toolsit/toolsit05_page.dart';
import 'package:siteach/src/pages/client/stage_02/whatsit/whatsit_page.dart';
import 'package:siteach/src/pages/client/stage_03/appliedcase/appliedcase_page.dart';
// stage_03
import 'package:siteach/src/pages/client/stage_03/instruction/instruction_page.dart';
import 'package:siteach/src/pages/client/stage_04/survey/survey01_page.dart';
// stage_04
import 'package:siteach/src/pages/client/stage_04/instruction/instruction_page.dart';
import 'package:siteach/src/pages/client/stage_04/caso/case01_page.dart';
import 'package:siteach/src/pages/client/stage_04/caso/case02_page.dart';
import 'package:siteach/src/pages/client/stage_04/caso/case03_page.dart';
import 'package:siteach/src/pages/client/stage_04/menucasesurvey/menucasesurvey_page.dart';
import 'package:siteach/src/pages/client/stage_04/survey/survey02_page.dart';
import 'package:siteach/src/pages/client/stage_04/survey/survey03_page.dart';
import 'package:siteach/src/pages/client/stage_04/toolsit/toolsit01_page.dart';
import 'package:siteach/src/pages/client/stage_04/toolsit/toolsit02_page.dart';
import 'package:siteach/src/pages/client/stage_04/toolsit/toolsit03_page.dart';
import 'package:siteach/src/pages/client/stage_04/toolsit/toolsit04_page.dart';
import 'package:siteach/src/pages/client/stage_04/toolsit/toolsit05_page.dart';
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
        'prueba': (BuildContext context) => PruebaPage(),
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

        // Menu Client
        'menuclient': (BuildContext context) => MenuClientPage(),
        // initiationSIT
        'initiationsit/instructionpage': (BuildContext context) =>
            InitiationSITInstructionPage(),
        'initiationsit/entrancesurvey_01': (BuildContext context) =>
            InitiationSITEntranceSurvey01Page(),
        'initiationsit/entrancesurvey_02': (BuildContext context) =>
            InitiationSITEntranceSurvey02Page(),
        'initiationsit/entrancesurvey_03': (BuildContext context) =>
            InitiationSITEntranceSurvey03Page(),
        // stage_01
        'stage_01/instructionpage': (BuildContext context) =>
            Stage01InstructionPage(),
        'stage_01/caso_01': (BuildContext context) => Stage01Caso01Page(),
        'stage_01/caso_02': (BuildContext context) => Stage01Caso02Page(),
        'stage_01/caso_03': (BuildContext context) => Stage01Caso03Page(),
        // stage_02
        'stage_02/instructionpage': (BuildContext context) =>
            Stage02InstructionPage(),
        'stage_02/thought': (BuildContext context) => Stage02ThoughtPage(),
        'stage_02/whatsit': (BuildContext context) => Stage02WhatSITPage(),
        'stage_02/toolsit_01': (BuildContext context) => Stage02ToolSIT01Page(),
        'stage_02/toolsit_02': (BuildContext context) => Stage02ToolSIT02Page(),
        'stage_02/toolsit_03': (BuildContext context) => Stage02ToolSIT03Page(),
        'stage_02/toolsit_04': (BuildContext context) => Stage02ToolSIT04Page(),
        'stage_02/toolsit_05': (BuildContext context) => Stage02ToolSIT05Page(),
        // stage_03
        'stage_03/instructionpage': (BuildContext context) =>
            Stage03InstructionPage(),
        'stage_03/appliedcase': (BuildContext context) =>
            Stage03AppliedCasePage(),
        // stage_04
        'stage_04/instructionpage': (BuildContext context) =>
            Stage04InstructionPage(),
        'stage_04/menucasesurvey': (BuildContext context) =>
            Stage04MenuCaseSurveyPage(),
        'stage_04/caso_01': (BuildContext context) => Stage04Caso01Page(),
        'stage_04/caso_02': (BuildContext context) => Stage04Caso02Page(),
        'stage_04/caso_03': (BuildContext context) => Stage04Caso03Page(),
        'stage_04/survey_01': (BuildContext context) => Stage04Survey01Page(),
        'stage_04/survey_02': (BuildContext context) => Stage04Survey02Page(),
        'stage_04/survey_03': (BuildContext context) => Stage04Survey03Page(),
        'stage_04/toolsit_01': (BuildContext context) => Stage04ToolSIT01Page(),
        'stage_04/toolsit_02': (BuildContext context) => Stage04ToolSIT02Page(),
        'stage_04/toolsit_03': (BuildContext context) => Stage04ToolSIT03Page(),
        'stage_04/toolsit_04': (BuildContext context) => Stage04ToolSIT04Page(),
        'stage_04/toolsit_05': (BuildContext context) => Stage04ToolSIT05Page(),
      },
    );
  }
}
