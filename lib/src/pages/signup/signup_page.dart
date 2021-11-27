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
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:siteach/src/pages/signup/signup_controller.dart';
import 'package:siteach/src/utils/my_colors.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  SignUpController _con = new SignUpController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      _con.init(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primaryColorBackground_01,
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              imageBanner(),
              textFieldUserName(),
              textFieldName(),
              textFieldLastName(),
              textFieldPassword(),
              textFieldVerifyPassword(),
              buttonSignUp(),
              buttonLogin(),
              // rowTextDontHaveAccount(),
            ],
          ),
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
        controller: _con.userNameController,
        decoration: InputDecoration(
          hintText: 'Nombre de Usuario',
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

  Widget textFieldName() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 6),
      decoration: BoxDecoration(
        color: MyColors.primaryColorText_03,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        controller: _con.nameController,
        decoration: InputDecoration(
          hintText: 'Nombre',
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

  Widget textFieldLastName() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 6),
      decoration: BoxDecoration(
        color: MyColors.primaryColorText_03,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        controller: _con.lastNameController,
        decoration: InputDecoration(
          hintText: 'Apellido',
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(15),
          hintStyle: TextStyle(
            color: MyColors.primaryColorText_01,
          ),
          prefixIcon: Icon(
            Icons.person_outline,
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
        obscureText: true,
        controller: _con.passwordController,
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
        obscureText: true,
        controller: _con.confirmPasswordController,
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
        onPressed: _con.singup,
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
        onPressed: _con.goTologinPega,
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
