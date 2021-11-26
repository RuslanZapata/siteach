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
import 'package:url_launcher/url_launcher.Dart';

class ReferenciasPage extends StatefulWidget {
  const ReferenciasPage({Key key}) : super(key: key);

  @override
  _ReferenciasPageState createState() => _ReferenciasPageState();
}

class _ReferenciasPageState extends State<ReferenciasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primaryColorBackground_03,
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              imageBanner('assets/img/logo/REFERENCIAS.png'),
              containerTitle('FUENTES INFORMATIVAS'),
              // containerSubTitle('SYSTEMATIC INVENTIVE THINKING'),
              containerFuente(
                  'Página oficial de SIT:\nhttps://www.sitsite.com/'),
              containerDescription(
                  'BARAK, Moshe; BEDIANASHVILI, Givi. Systematic Inventive Thinking (sit): A method for innovative problem solving and new product development. Proceedings on Engineering, 2021, vol. 3, no 1, p. 111-122.'),
              containerDescription("STERN, Yoni; BITON, Idit; MA'"
                  'OR, Ze'
                  "'ev. Systematically Creating Coincidental Product Evolution: Case Studies of the Application of the Systematic Inventive Thinking®(Sit) Method in the Chemical Industry. Journal of Business Chemistry, 2006, vol. 3, no 1, p. 13-21."),
              containerDescription(
                  'BARAK, Moshe. Teaching methods for systematic inventive problem-solving: evaluation of a course for teachers. Research in Science & Technological Education [online]. 2006, vol. 24, no. 2, s. 237. ISSN 02635143.'),
              containerDescription(
                  "BARAK, Moshe. Impacts of learning inventive problem-solving principles: students' transition from systematic searching to heuristic problem solving. Instructional Science [online]. 2013, vol. 41, no. 4, s. 657-679. ISSN 0020-4277."),
              containerDescription(
                  'CAI, C., XIAO, R. The method for uncoupling design with the aid of systematic inventive thinking. Proceedings of the Institution of Mechanical Engineers, Part C: Journal of Mechanical Engineering Science, 2008, vol. 222, p. 435-445. '),
              containerDescription(
                  'ELIZONDO COSTA, Ricardo. Lost In Transition: A Patient-Provider Service Framework to Improve Transitional Care. 2013. Tesis Doctoral. University of Cincinnati.'),
              containerDescription(
                  'KURATKO, Donald F.; GOLDSBY, Michael G.; HORNSBY, Jeffrey S. Corporate innovation: Disruptive thinking in organizations. Routledge, 2018. '),
              containerDescription(
                  'BARAK, Moshe; MESIKA, Pnina. Teaching methods for inventive problem-solving in junior high school. Thinking Skills and Creativity, 2007, vol. 2, no 1, p. 19-29.'),
            ],
          ),
        ),
      ),
    );
  }

  Widget imageBanner(imageUrl) {
    return Container(
      width: double.infinity,
      height: 180,
      margin: EdgeInsets.only(top: 100, bottom: 40),
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

  Widget containerFuente(String description) {
    return Container(
      width: double.infinity,
      // padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
      margin: EdgeInsets.only(right: 25, left: 25, bottom: 18),
      // padding: EdgeInsets.all(5),
      child: InkWell(
        child: Text(
          description,
          textAlign: TextAlign.justify,
          style: TextStyle(
            color: Color(0xFFFFFFFF),
            fontSize: 18,
            fontFamily: 'Puritan-Regular',
          ),
        ),
        onTap: () => launch(
            'https://docs.flutter.io/flutter/services/UrlLauncher-class.html'),
      ),
    );
  }

  Widget containerDescription(String description) {
    return Container(
      width: double.infinity,
      // padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
      margin: EdgeInsets.only(right: 25, left: 25, bottom: 18),
      // padding: EdgeInsets.all(5),
      child: Text(
        description,
        textAlign: TextAlign.justify,
        style: TextStyle(
          color: Color(0xFFFFFFFF),
          fontSize: 18,
          fontFamily: 'Puritan-Regular',
        ),
      ),
    );
  }
}
