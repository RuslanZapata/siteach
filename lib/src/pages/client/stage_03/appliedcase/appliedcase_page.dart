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
import 'package:siteach/src/pages/client/stage_03/appliedcase/chewie_list_item.dart';
import 'package:siteach/src/utils/my_colors.dart';
import 'package:video_player/video_player.dart';

class Stage03AppliedCasePage extends StatefulWidget {
  const Stage03AppliedCasePage({Key key}) : super(key: key);

  @override
  _Stage03AppliedCasePageState createState() => _Stage03AppliedCasePageState();
}

class _Stage03AppliedCasePageState extends State<Stage03AppliedCasePage> {
  // VideoPlayerController _controller;
  // Future<void> _initializeVideoPlayerFuture;

  // @override
  // void initState() {
  //   _controller =
  //       VideoPlayerController.asset('assets/video/caso_detergente.mp4');
  //   _initializeVideoPlayerFuture = _controller.initialize();
  //   _controller.setLooping(true);
  //   _controller.setVolume(1.0);
  //   super.initState();
  // }

  // @override
  // void dispose() {
  //   _controller.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primaryColorBackground_01,
      appBar: AppBar(
        title: Text(
          'Casos aplicados',
          style: TextStyle(
            fontFamily: 'Rationale',
            fontSize: 28,
            color: MyColors.primaryColorText_02,
          ),
        ),
        backgroundColor: MyColors.primaryColor,
      ),
      // body: ListView(
      //   children: [
      //     ChewieListItem(
      //       videoPlayerController:
      //           VideoPlayerController.asset('assets/video/caso_detergente.mp4'),
      //       looping: true,
      //     ),
      //     ChewieListItem(
      //       videoPlayerController:
      //           VideoPlayerController.asset('assets/video/caso_detergente.mp4'),
      //       looping: true,
      //     ),
      //   ],
      // ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Container(
              //   margin: EdgeInsets.only(bottom: 16.0),
              //   width: double.infinity,
              //   height: 277,
              //   alignment: Alignment.center,
              //   decoration: BoxDecoration(
              //     color: Colors.grey,
              //     image: DecorationImage(
              //       image: AssetImage('assets/img/menu_case_survey_01.png'),
              //       alignment: Alignment.topCenter,
              //       fit: BoxFit.fill,
              //     ),
              //     border: Border.all(
              //       color: MyColors.primaryColor.withOpacity(0.3),
              //       width: 4,
              //     ),
              //   ),
              //   child: Text(
              //     'CASOS',
              //     style: TextStyle(
              //       fontSize: 60,
              //       fontFamily: 'Rationale',
              //       color: MyColors.primaryColor,
              //     ),
              //   ),
              // ),
              ChewieListItem(
                videoPlayerController: VideoPlayerController.asset(
                    'assets/video/caso_detergente.mp4'),
                looping: true,
              ),
              // FutureBuilder(
              //     future: _initializeVideoPlayerFuture,
              //     builder: (context, snapshot) {
              //       if (snapshot.connectionState == ConnectionState.done) {
              //         return AspectRatio(
              //           aspectRatio: _controller.value.aspectRatio,
              //           child: VideoPlayer(_controller),
              //         );
              //       } else {
              //         return Center(
              //           child: CircularProgressIndicator(),
              //         );
              //       }
              //     }),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, 'menuclient');
        },
        tooltip: 'Increment',
        child: Icon(
          Icons.arrow_forward_ios,
          color: MyColors.primaryColorText_02,
        ),
        backgroundColor: MyColors.primaryColor,
      ),
    );
  }
}
