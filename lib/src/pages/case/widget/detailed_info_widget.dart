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
// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'package:siteach/src/pages/case/data/hero_tag.dart';
import 'package:siteach/src/pages/case/model/location.dart';
import 'package:siteach/src/pages/case/widget/hero_widget.dart';

class DetailedInfoWidget extends StatelessWidget {
  final Location location;

  const DetailedInfoWidget({
    @required this.location,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeroWidget(
              tag: HeroTag.addressLine1(location),
              child: Text(location.addressLine1),
            ),
            SizedBox(height: 8),
            HeroWidget(
              tag: HeroTag.addressLine2(location),
              child: Text(location.addressLine2),
            ),
            SizedBox(height: 8),
          ],
        ),
      );
}
