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
import 'package:siteach/src/pages/login/login_controller.dart';
import 'package:siteach/src/utils/my_colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  LoginController _con = new LoginController();

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
              textFieldUser(),
              textFieldPassword(),
              buttonLogin(),
              buttonSignUp(),
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
          top: 100, bottom: MediaQuery.of(context).size.height * 0.1),
      child: Image.asset(
        'assets/img/login.png',
        width: 300,
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
        controller: _con.userNameController,
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
        controller: _con.passwordController,
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'Contraseña',
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

  Widget buttonLogin() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
      child: ElevatedButton(
        onPressed: _con.login,
        child: Text(
          'Ingresar',
          style: TextStyle(color: MyColors.primaryColorText_02),
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

  Widget buttonSignUp() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
      child: ElevatedButton(
        onPressed: _con.goToSignUpPega,
        child: Text(
          'Registrarse',
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

  // Widget rowTextDontHaveAccount() {
  //   return Row(
  //     mainAxisAlignment: MainAxisAlignment.center,
  //     children: [
  //       Text(
  //         '¿No tienes cuenta?',
  //         style: TextStyle(
  //           color: MyColors.primaryColor,
  //         ),
  //       ),
  //       SizedBox(
  //         width: 10,
  //       ),
  //       Text(
  //         'Registrate',
  //         style: TextStyle(
  //           fontWeight: FontWeight.bold,
  //           color: MyColors.primaryColor,
  //         ),
  //       ),
  //     ],
  //   );
  // }
}
