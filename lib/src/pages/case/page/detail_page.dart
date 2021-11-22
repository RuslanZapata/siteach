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
import 'package:siteach/src/pages/case/data/hero_tag.dart';
import 'package:siteach/src/pages/case/model/location.dart';
import 'package:siteach/src/pages/case/widget/detailed_info_widget.dart';
import 'package:siteach/src/pages/case/widget/hero_widget.dart';
import 'package:siteach/src/pages/case/widget/lat_long_widget.dart';
import 'package:siteach/src/pages/case/widget/reviews_widget.dart';

class DetailPage extends StatelessWidget {
  final Location location;
  final Animation animation;

  const DetailPage({
    @required this.location,
    @required this.animation,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text('CASOS'),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(Icons.close),
              onPressed: Navigator.of(context).pop,
            ),
            SizedBox(width: 10)
          ],
        ),
        body: Column(
          children: [
            Expanded(
              flex: 4,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  SizedBox.expand(
                    child: HeroWidget(
                      tag: HeroTag.image(location.urlImage),
                      child: Image.asset(location.urlImage, fit: BoxFit.cover),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: LatLongWidget(location: location),
                  ),
                ],
              ),
            ),
            DetailedInfoWidget(location: location),
            Expanded(
              flex: 5,
              child: ReviewsWidget(location: location, animation: animation),
            ),
          ],
        ),
      );
}
