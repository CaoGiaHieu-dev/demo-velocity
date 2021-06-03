import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class RatingView extends GetView {
  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        'Rating '.text.bodyText1(context).make(),
        10.heightBox,
        Rating(),
      ],
      crossAlignment: CrossAxisAlignment.center,
    ).p20();
  }
}

class Rating extends StatefulWidget {
  Rating({Key? key}) : super(key: key);

  @override
  _RatingState createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  @override
  Widget build(BuildContext context) {
    return VxRating(
      onRatingUpdate: (value) {
        print(value);
      },
      size: 50,
    );
  }
}
