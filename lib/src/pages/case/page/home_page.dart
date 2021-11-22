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
// ignore_for_file: dead_code
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:siteach/src/pages/case/widget/locations_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: buildAppBar(),
        body: LocationsWidget(),
      );

  Widget buildAppBar() => AppBar(
        elevation: 5,
        backgroundColor: Colors.transparent,
        title: Text(
          'A continuación, te presentamos\nalgunos casos prácticos:',
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      );
}
