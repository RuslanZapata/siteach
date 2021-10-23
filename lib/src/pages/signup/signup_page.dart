// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
// ignore_for_file: avoid_unnecessary_containers
// ignore_for_file: sized_box_for_whitespace
import 'package:flutter/material.dart';
import 'package:siteach/src/utils/my_colors.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primaryColorBackground_01,
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            imageBanner(),
            textFieldUserName(),
            textFieldUser(),
            textFieldPassword(),
            textFieldVerifyPassword(),
            buttonSignUp(),
            buttonLogin(),
            // rowTextDontHaveAccount(),
          ],
        ),
      ),
    );
  }

  Widget imageBanner() {
    return Container(
      margin: EdgeInsets.only(
          top: 100, bottom: MediaQuery.of(context).size.height * 0.05),
      child: Image.asset(
        'assets/img/signup.png',
        width: 300,
      ),
    );
  }

  Widget textFieldUserName() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 6),
      decoration: BoxDecoration(
        color: MyColors.primaryColorText_03,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Nombre y apellido',
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(15),
          hintStyle: TextStyle(
            color: MyColors.primaryColorText_01,
          ),
          prefixIcon: Icon(
            Icons.account_box,
            color: MyColors.primaryColor,
          ),
        ),
      ),
    );
  }

  Widget textFieldUser() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 6),
      decoration: BoxDecoration(
        color: MyColors.primaryColorText_03,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Usuario',
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(15),
          hintStyle: TextStyle(
            color: MyColors.primaryColorText_01,
          ),
          prefixIcon: Icon(
            Icons.person,
            color: MyColors.primaryColor,
          ),
        ),
      ),
    );
  }

  Widget textFieldPassword() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 6),
      decoration: BoxDecoration(
        color: MyColors.primaryColorText_03,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Ingrese Contraseña',
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(15),
          hintStyle: TextStyle(
            color: MyColors.primaryColorText_01,
          ),
          prefixIcon: Icon(
            Icons.lock,
            color: MyColors.primaryColor,
          ),
        ),
      ),
    );
  }

  Widget textFieldVerifyPassword() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 6),
      decoration: BoxDecoration(
        color: MyColors.primaryColorText_03,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Verificación de Contraseña',
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(15),
          hintStyle: TextStyle(
            color: MyColors.primaryColorText_01,
          ),
          prefixIcon: Icon(
            Icons.lock_outline,
            color: MyColors.primaryColor,
          ),
        ),
      ),
    );
  }

  Widget buttonSignUp() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          'Registrarse',
          style: TextStyle(
            color: MyColors.primaryColorText_02,
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: MyColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          padding: EdgeInsets.symmetric(vertical: 15),
        ),
      ),
    );
  }

  Widget buttonLogin() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          'Iniciar sesión',
        ),
        style: ElevatedButton.styleFrom(
          primary: MyColors.primaryColorBackground_03,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          padding: EdgeInsets.symmetric(vertical: 15),
        ),
      ),
    );
  }
}
