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
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:siteach/src/api/environment.dart';
import 'package:siteach/src/models/response_api.dart';
import 'package:siteach/src/models/users.dart';
import 'package:http/http.dart' as http;

class UsersProvider {
  String _url = Environment.API_SITEACH;
  String _api = '/api/users';

  BuildContext context;

  Future init(BuildContext context) {
    this.context = context;
  }

  Future<ResponseApi> create(User user) async {
    try {
      Uri url = Uri.http(_url, '$_api/create');
      String bodyParams = json.encode(user);

      Map<String, String> headers = {
        'Content-type': 'application/json',
      };

      final response = await http.post(url, headers: headers, body: bodyParams);

      final data = json.decode(response.body);

      ResponseApi responseApi = ResponseApi.fromJson(data);

      return responseApi;
    } catch (e) {
      print('Error: $e');
      return null;
    }
  }
}
