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

class LoginController {
  BuildContext context;
  TextEditingController userController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  Future init(BuildContext context) {
    this.context = context;
  }

  void goToSignUpPega() {
    Navigator.pushNamed(context, 'signup');
    // Navigator.of(context)
    // .push(MaterialPageRoute(builder: (_) => RegisterPage()));
  }

  void login() {
    String email = userController.text.trim();
    String password = passwordController.text.trim();

    print('Emil: $email');
    print('Password: $password');
  }
}
