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
import 'package:siteach/src/models/response_api.dart';
import 'package:siteach/src/models/users.dart';
import 'package:siteach/src/provider/user_provider.dart';
import 'package:siteach/src/utils/my_snackbar.dart';

class SignUpController {
  BuildContext context;
  TextEditingController userNameController = new TextEditingController();
  TextEditingController nameController = new TextEditingController();
  TextEditingController lastNameController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  TextEditingController confirmPasswordController = new TextEditingController();

  UsersProvider usersProvider = new UsersProvider();

  Future init(BuildContext context) async {
    this.context = context;
    await usersProvider.init(context);
  }

  void goTologinPega() {
    Navigator.pushNamed(context, 'login');
  }

  void singup() async {
    String userName = userNameController.text.trim();
    String name = nameController.text;
    String lastName = lastNameController.text;
    String password = passwordController.text.trim();
    String confirmPassword = confirmPasswordController.text.trim();
    if (userName.isEmpty ||
        name.isEmpty ||
        lastName.isEmpty ||
        password.isEmpty ||
        confirmPassword.isEmpty) {
      print(userName);
      print(name);
      print(lastName);
      print(password);
      print(confirmPassword);
      MySnackbar.show(context, 'Debe ingresar todo los campos requeridos');
      return;
    }

    if (password != confirmPassword) {
      MySnackbar.show(context, 'Las contraseñas deben ser iguales');
      return;
    }

    if (password.length < 6) {
      MySnackbar.show(context, 'La contraseña debe tener mas de 6 caracteres');
      return;
    }
    print('Holaaaaaaaaaa');
    print(userName);
    print(name);
    print(lastName);
    print(password);
    print(confirmPassword);
    User user = new User(
        username: userName, name: name, lastname: lastName, password: password);
    print('5555555555');
    print('user');

    ResponseApi responseApi = await usersProvider.create(user);
    print('22222222222');

    MySnackbar.show(context, responseApi.message);
  }
}
