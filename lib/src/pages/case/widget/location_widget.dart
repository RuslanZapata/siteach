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
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:siteach/src/pages/case/model/location.dart';
import 'package:siteach/src/pages/case/page/detail_page.dart';
import 'package:siteach/src/pages/case/widget/expanded_content_widget.dart';
import 'package:siteach/src/pages/case/widget/image_widget.dart';

class LocationWidget extends StatefulWidget {
  final Location location;

  const LocationWidget({
    @required this.location,
    Key key,
  }) : super(key: key);

  @override
  _LocationWidgetState createState() => _LocationWidgetState();
}

class _LocationWidgetState extends State<LocationWidget> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Stack(
        alignment: Alignment.center,
        children: [
          AnimatedPositioned(
            duration: Duration(milliseconds: 500),
            bottom: isExpanded ? 40 : 100,
            width: isExpanded ? size.width * 0.78 : size.width * 0.7,
            height: isExpanded ? size.height * 0.6 : size.height * 0.5,
            child: ExpandedContentWidget(location: widget.location),
          ),
          AnimatedPositioned(
            duration: Duration(milliseconds: 500),
            bottom: isExpanded ? 150 : 100,
            child: GestureDetector(
              onPanUpdate: onPanUpdate,
              onTap: openDetailPage,
              child: ImageWidget(location: widget.location),
            ),
          ),
        ],
      ),
    );
  }

  void openDetailPage() {
    if (!isExpanded) {
      /// Tap to expand card
      setState(() => isExpanded = true);
      return;
    }

    Navigator.of(context).push(
      PageRouteBuilder(
        transitionDuration: Duration(seconds: 1),
        reverseTransitionDuration: Duration(seconds: 1),
        pageBuilder: (context, animation, secondaryAnimation) {
          final curvedAnimation = CurvedAnimation(
            parent: animation,
            curve: Interval(0, 0.5),
          );

          return FadeTransition(
            opacity: curvedAnimation,
            child: DetailPage(location: widget.location, animation: animation),
          );
        },
      ),
    );
  }

  void onPanUpdate(DragUpdateDetails details) {
    if (details.delta.dy < 0) {
      setState(() {
        isExpanded = true;
      });
    } else if (details.delta.dy > 0) {
      setState(() {
        isExpanded = false;
      });
    }
  }
}
