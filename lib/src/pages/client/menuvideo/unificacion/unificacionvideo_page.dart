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
import 'package:flutter/material.dart';
import 'package:siteach/src/pages/client/menuvideo/chewie_list_item.dart';
import 'package:video_player/video_player.dart';

class UnificacionVideoPage extends StatefulWidget {
  const UnificacionVideoPage({Key key}) : super(key: key);

  @override
  _UnificacionVideoPageState createState() => _UnificacionVideoPageState();
}

class _UnificacionVideoPageState extends State<UnificacionVideoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: <Widget>[
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'assets/video/unificacion.mp4',
            ),
            looping: true,
          ),
        ],
      ),
    );
  }
}
