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

class MenuSITPage extends StatefulWidget {
  const MenuSITPage({Key key}) : super(key: key);

  @override
  _MenuSITPageState createState() => _MenuSITPageState();
}

class _MenuSITPageState extends State<MenuSITPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          'Menú SIT',
          style: TextStyle(
            fontFamily: 'Rationale',
            fontSize: 28,
            color: MyColors.primaryColorText_02,
          ),
        ),
        backgroundColor: MyColors.primaryColor,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey,
          image: DecorationImage(
            image: AssetImage('assets/img/fondoSIT.png'),
            alignment: Alignment.topCenter,
            fit: BoxFit.fill,
          ),
        ),
        // child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buttonWhatSIT('Etapa 1: ¿Qué harías tú?'),
            buttonTools('Etapa 2: ¡Aprendamos un poco!'),
            buttonPrincipios('Etapa 3: Recursos de apoyo'),
            // buttonReferences('Etapa 4: Evalúate'),
          ],
        ),
      ),
    );
  }

  Widget imageBanner() {
    return Container(
      // padding: EdgeInsets.only(left: 70, right: 70),
      width: 250,
      child: Image.asset(
        'assets/img/sitimg.png',
        width: double.infinity,
        // width: 300,
      ),
    );
  }

  Widget buttonSignUp(String textButton, String textLink) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 2, vertical: 0),
      // child: ElevatedButton(
      //   onPressed: () {
      //     Navigator.pushNamed(context, textLink);
      //   },
      //   child: Text(
      //     textButton,
      //     style: TextStyle(
      //       fontSize: 16,
      //       fontFamily: 'Mulish',
      //       color: MyColors.primaryColorText_02,
      //     ),
      //   ),
      //   style: ElevatedButton.styleFrom(
      //     primary: Colors.black.withOpacity(0.1),
      //     shape: RoundedRectangleBorder(
      //       borderRadius: BorderRadius.circular(30),
      //     ),
      //     padding: EdgeInsets.symmetric(vertical: 35),
      //   ),
      // ),
      child: ElevatedButton.icon(
        icon: Icon(
          Icons.perm_media,
          color: MyColors.primaryColorBackground_07,
          size: 36.0,
        ),
        label: Text(
          'Elevated Button',
          style: TextStyle(
            fontSize: 32,
            fontFamily: 'Rationale',
            color: MyColors.primaryColorBackground_07,
          ),
        ),
        onPressed: () {
          print('Pressed');
        },
        style: ElevatedButton.styleFrom(
          primary: MyColors.primaryColorBackground_08,
          shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(20.0),
          ),
          padding: EdgeInsets.symmetric(vertical: 25),
        ),
      ),
    );
  }

  Widget buttonWhatSIT(String textLink) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 0),
      child: ElevatedButton.icon(
        icon: Icon(
          Icons.travel_explore,
          color: MyColors.primaryColorBackground_07,
          size: 36.0,
        ),
        label: Text(
          '¿Que es SIT?',
          style: TextStyle(
            fontSize: 32,
            fontFamily: 'Rationale',
            color: MyColors.primaryColorBackground_07,
          ),
        ),
        onPressed: () {
          Navigator.pushNamed(context, 'stage_02/whatsit');
        },
        style: ElevatedButton.styleFrom(
          primary: MyColors.primaryColorBackground_09,
          shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(20.0),
          ),
          padding: EdgeInsets.symmetric(vertical: 25),
        ),
      ),
    );
  }

  Widget buttonTools(String textLink) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 0),
      child: ElevatedButton.icon(
        icon: Icon(
          Icons.construction,
          color: MyColors.primaryColorBackground_07,
          size: 36.0,
        ),
        label: Text(
          'Herramientas',
          style: TextStyle(
            fontSize: 32,
            fontFamily: 'Rationale',
            color: MyColors.primaryColorBackground_07,
          ),
        ),
        onPressed: () {
          Navigator.pushNamed(context, 'menutools');
        },
        style: ElevatedButton.styleFrom(
          primary: MyColors.primaryColorBackground_09,
          shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(20.0),
          ),
          padding: EdgeInsets.symmetric(vertical: 25),
        ),
      ),
    );
  }

  Widget buttonPrincipios(String textLink) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 0),
      child: ElevatedButton.icon(
        icon: Icon(
          Icons.emoji_objects_outlined,
          color: MyColors.primaryColorBackground_07,
          size: 36.0,
        ),
        label: Text(
          'Principios',
          style: TextStyle(
            fontSize: 32,
            fontFamily: 'Rationale',
            color: MyColors.primaryColorBackground_07,
          ),
        ),
        onPressed: () {
          Navigator.pushNamed(context, 'menuprincipios');
        },
        style: ElevatedButton.styleFrom(
          primary: MyColors.primaryColorBackground_09,
          shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(20.0),
          ),
          padding: EdgeInsets.symmetric(vertical: 25),
        ),
      ),
    );
  }

  Widget buttonReferences(String textLink) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 0),
      child: ElevatedButton.icon(
        icon: Icon(
          Icons.article,
          color: MyColors.primaryColorBackground_07,
          size: 36.0,
        ),
        label: Text(
          'REFERENCIAS',
          style: TextStyle(
            fontSize: 32,
            fontFamily: 'Rationale',
            color: MyColors.primaryColorBackground_07,
          ),
        ),
        onPressed: () {
          print('Pressed');
        },
        style: ElevatedButton.styleFrom(
          primary: MyColors.primaryColorBackground_08,
          shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(20.0),
          ),
          padding: EdgeInsets.symmetric(vertical: 25),
        ),
      ),
    );
  }
}
