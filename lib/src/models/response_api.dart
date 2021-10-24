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

ResponseApi responseApiFromJson(String str) =>
    ResponseApi.fromJson(json.decode(str));

String responseApiToJson(ResponseApi data) => json.encode(data.toJson());

class ResponseApi {
  String message;
  String error;
  bool success;
  dynamic data;

  ResponseApi({
    this.message,
    this.error,
    this.success,
  });

  ResponseApi.fromJson(Map<String, dynamic> json) {
    message = json["message"];
    error = json["error"];
    success = json["success"];

    try {
      data = json['data'];
    } catch (e) {
      print('Exception data $e');
    }
  }

  Map<String, dynamic> toJson() => {
        "message": message,
        "error": error,
        "success": success,
      };
}
