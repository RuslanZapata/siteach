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

class Stage01Caso01Page extends StatefulWidget {
  const Stage01Caso01Page({Key key}) : super(key: key);

  @override
  _Stage01Caso01PageState createState() => _Stage01Caso01PageState();
}

class _Stage01Caso01PageState extends State<Stage01Caso01Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primaryColorBackground_01,
      appBar: AppBar(
        title: Text(
          'Caso 1',
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
              descripcion(),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: MyColors.primaryColor.withOpacity(0.23),
                    width: 4,
                  ),
                ),
                padding: EdgeInsets.only(
                  left: 10,
                  right: 10,
                  top: 15,
                  bottom: 15,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        imagenContent_02(),
                        textContent(
                            'En la sala de espera de un aeropuerto, un vendedor de globos de helio notó que muchos de estos globos se soltaban involuntariamente de las manos de las personas. '),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        textContent(
                            'Estos globos se elevaban en el techo, muy alto.\n\nEl vendedor quiere aprovechar por las noches para recuperar los globos del techo y reevenderlos.'),
                        imagenContent_01(),
                      ],
                    ),
                    textTitle(),
                    textFormField(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        buttonCase('Guardar >', 'stage_01/caso_02'),
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

  Widget descripcion() {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        // padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
        padding: EdgeInsets.fromLTRB(0, 15, 0, 5),
        child: Text(
          '¿Qué harías tú en este PRIMER CASO?. Escribe breve y concisamente tu respuesta, por favor.',
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontSize: 14,
            fontFamily: 'Puritan-Regular',
          ),
        ),
      ),
    );
  }

  Widget textFormField() {
    return TextFormField(
      // controller: _Textcontroller,
      minLines: 3,
      maxLines: 8,
      keyboardType: TextInputType.multiline,
      decoration: InputDecoration(
        hintText: 'Enter A Message Here',
        hintStyle: TextStyle(color: Colors.grey),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
    );
  }

  Widget textContent(String textDescripcion) {
    return Container(
      width: 160,
      height: 180,
      child: Text(
        textDescripcion,
        textAlign: TextAlign.justify,
        style: TextStyle(
          fontSize: 14,
        ),
      ),
    );
  }

  Widget imagenContent_01() {
    return Container(
      width: 160,
      height: 180,
      child: Image.asset(
        'assets/img/globos1.png',
        // width: 110,
      ),
    );
  }

  Widget imagenContent_02() {
    return Container(
      width: 160,
      height: 180,
      child: Image.asset(
        'assets/img/globos2.png',
        // width: 110,
      ),
    );
  }

  Widget textTitle() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
      width: double.infinity,
      child: Text(
        '¿Qué podría hacer para recuperar los globos?',
        textAlign: TextAlign.justify,
        style: TextStyle(
          fontSize: 17,
          fontFamily: 'Puritan',
        ),
      ),
    );
  }

  Widget buttonCase(String textButton, String textLink) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
      width: 150,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, textLink);
        },
        child: Text(
          textButton,
          style: TextStyle(
            color: MyColors.primaryColorText_02,
            fontSize: 16,
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: MyColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          padding: EdgeInsets.symmetric(vertical: 5),
        ),
      ),
    );
  }
}
