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
import 'package:siteach/src/provider/sesion_provider.dart';
import 'package:siteach/src/utils/my_snackbar.dart';
import 'package:siteach/src/utils/shared_pref.dart';

class BienvenidoController {
  BuildContext context;
  String idUser;

  SesionProvider sesionProvider = new SesionProvider();
  SharedPref _sharedPref = new SharedPref();

  Future init(BuildContext context) async {
    this.context = context;
    await sesionProvider.init(context);

    User user = User.fromJson(await _sharedPref.read('user') ?? {});

    print('Usuario: ${user.toJson()}');
    idUser = user.idUser;

    // if (user?.sessionToken != null) {
    //   Navigator.pushNamedAndRemoveUntil(
    //       context, 'bienvenido', (route) => false);
    // }
  }

  void create() async {
    print('User===> $idUser');
    ResponseApi responseApi = await sesionProvider.create(idUser);

    print('Password===> $idUser');
    print('Password===> ${responseApi.toJson()}');

    if (responseApi.success) {
      MySnackbar.show(context, responseApi.message);
      // Navigator.pushNamed(context, 'menu');
      Navigator.pushNamedAndRemoveUntil(context, 'menu', (route) => false);
    } else {
      MySnackbar.show(context, responseApi.message);
    }
  }
}
