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
// ignore_for_file: argument_type_not_assignable
import 'package:flutter/material.dart';
import 'package:siteach/src/models/response_api.dart';
import 'package:siteach/src/models/users.dart';
import 'package:siteach/src/provider/user_provider.dart';
import 'package:siteach/src/utils/my_snackbar.dart';
import 'package:siteach/src/utils/shared_pref.dart';

class LoginController {
  BuildContext context;
  TextEditingController userNameController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  UsersProvider usersProvider = new UsersProvider();
  SharedPref _sharedPref = new SharedPref();

  Future init(BuildContext context) async {
    this.context = context;
    await usersProvider.init(context);

    User user = User.fromJson(await _sharedPref.read('user') ?? {});

    print('Usuario: ${user.toJson()}');

    if (user?.sessionToken != null) {
      Navigator.pushNamedAndRemoveUntil(
          context, 'bienvenido', (route) => false);
    }
  }

  void goToSignUpPega() {
    Navigator.pushNamed(context, 'signup');
  }

  void login() async {
    String userName = userNameController.text.trim();
    String password = passwordController.text.trim();
    print('User===> $userName');
    print('Password===> $password');

    ResponseApi responseApi = await usersProvider.login(userName, password);

    print('User===> $userName');
    print('Password===> $password');
    print('Password===> $responseApi');

    if (responseApi.success) {
      User user = User.fromJson(responseApi.data);
      _sharedPref.save('user', user.toJson());
      MySnackbar.show(context, responseApi.message);
      // Navigator.pushNamed(context, 'menu');
      Navigator.pushNamedAndRemoveUntil(
          context, 'bienvenido', (route) => false);
    } else {
      MySnackbar.show(context, responseApi.message);
    }
  }
}
