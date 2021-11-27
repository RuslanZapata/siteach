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
import 'package:http/http.dart' as http;

class SesionProvider {
  String _url = Environment.API_SITEACH;
  String _api = '/api/session';

  BuildContext context;

  Future init(BuildContext context) {
    this.context = context;
  }

  Future<ResponseApi> create(
    String idUser,
  ) async {
    try {
      Uri url = Uri.parse('$_url$_api/create');
      String bodyParams = json.encode({'idUser': idUser});

      Map<String, String> headers = {
        'Content-Type': 'application/json',
      };

      final res = await http.post(url, headers: headers, body: bodyParams);
      final data = json.decode(res.body);

      ResponseApi responseApi = ResponseApi.fromJson(data);
      return responseApi;
    } catch (e) {
      print('Error: $e');
      return null;
    }
  }

  Future<ResponseApi> createCierre(
    String idUser,
  ) async {
    try {
      Uri url = Uri.parse('$_url$_api/createcierre');
      String bodyParams = json.encode({'idUser': idUser});

      Map<String, String> headers = {
        'Content-Type': 'application/json',
      };

      final res = await http.post(url, headers: headers, body: bodyParams);
      final data = json.decode(res.body);

      ResponseApi responseApi = ResponseApi.fromJson(data);
      return responseApi;
    } catch (e) {
      print('Error: $e');
      return null;
    }
  }
}
