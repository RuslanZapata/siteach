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
import 'package:siteach/src/pages/case/data/locations.dart';
import 'package:siteach/src/pages/case/model/location.dart';
import 'package:siteach/src/pages/case/model/review.dart';
import 'package:siteach/src/pages/case/widget/hero_widget.dart';

class ReviewsWidget extends StatelessWidget {
  final Location location;
  final Animation animation;

  const ReviewsWidget({
    @required this.location,
    @required this.animation,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ListView.separated(
      itemCount: location.reviews.length,
      padding: EdgeInsets.all(16),
      separatorBuilder: (context, index) => Divider(),
      itemBuilder: (context, index) {
        final review = location.reviews[index];

        return AnimatedBuilder(
          animation: animation,
          builder: (context, child) => FadeTransition(
            opacity: CurvedAnimation(
              parent: animation,
              curve: Interval(0.2, 1, curve: Curves.easeInExpo),
            ),
            child: child,
          ),
          child: buildReview(review),
        );
      });

  Widget buildReview(Review review) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HeroWidget(
                  tag: HeroTag.avatar(review, locations.indexOf(location)),
                  child: CircleAvatar(
                    radius: 16,
                    backgroundColor: Colors.black12,
                    backgroundImage: AssetImage(review.urlImage),
                  ),
                ),
                Text(
                  review.username,
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                SizedBox(),
                Text(
                  review.date,
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Text(
              review.description,
              style: TextStyle(
                color: Colors.black54,
              ),
            ),
          ],
        ),
      );
}
