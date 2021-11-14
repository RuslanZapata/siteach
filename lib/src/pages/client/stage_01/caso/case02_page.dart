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

class Stage01Caso02Page extends StatefulWidget {
  const Stage01Caso02Page({Key key}) : super(key: key);

  @override
  _Stage01Caso02PageState createState() => _Stage01Caso02PageState();
}

class _Stage01Caso02PageState extends State<Stage01Caso02Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primaryColorBackground_01,
      appBar: AppBar(
        title: Text(
          'Caso 2',
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
                        imagenContent_01(),
                        textContent(
                            'El Faro de Alejandría fue construido en el siglo III a. C. y se considera una de las Siete Maravillas del Mundo. Sostratus, el arquitecto del faro, quería que su nombre se perpetrara en el diseño del faro. '),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        textContent(
                            'Esto no fue permitido por Ptolomeo II, el rey de Egipto, quien prohibió que su nombre fuera grabado en la enorme estructura.'),
                        imagenContent_02(),
                      ],
                    ),
                    textTitle(),
                    textFormField(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buttonCase('Atras'),
                        buttonCase('Guardar'),
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
          '¿Qué harías tú en este SEGUNDO CASO?. Escribe breve y concisamente tu respuesta, por favor.',
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
        'assets/img/faro1.png',
        // width: 110,
      ),
    );
  }

  Widget imagenContent_02() {
    return Container(
      width: 160,
      height: 180,
      child: Image.asset(
        'assets/img/egipto.png',
        // width: 110,
      ),
    );
  }

  Widget textTitle() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
      width: double.infinity,
      child: Text(
        ' ¿Cómo podría el arquitecto solucionar este problema?',
        textAlign: TextAlign.justify,
        style: TextStyle(
          fontSize: 17,
          fontFamily: 'Puritan',
        ),
      ),
    );
  }

  Widget buttonCase(String textButton) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
      width: 150,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, 'stage_01/caso_03');
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
