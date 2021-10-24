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

class SignUpController {
  BuildContext context;
  TextEditingController usernameController = new TextEditingController();
  TextEditingController nameController = new TextEditingController();
  TextEditingController lastNameController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  TextEditingController confirmPasswordController = new TextEditingController();

  UsersProvider usersProvider = new UsersProvider();

  Future init(BuildContext context) {
    this.context = context;
    usersProvider.init(context);
  }

  void singup() async {
    String username = usernameController.text.trim();
    String name = nameController.text;
    String lastName = lastNameController.text;
    String password = passwordController.text.trim();
    String confirmPassword = confirmPasswordController.text.trim();

    print('Hola Gente');

    User user = new User(
        username: username, name: name, lastname: lastName, password: password);

    ResponseApi responseApi = await usersProvider.create(user);

    print('RESPUESTA: ${responseApi.toJson()}');

    print('Username: $username');
    print('Password: $password');
    print('Password: $confirmPassword');
  }
}
