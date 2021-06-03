import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class CircleView extends GetView {
  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        'Circle'.text.bodyText1(context).make(),
        10.heightBox,
        Circle(),
      ],
      crossAlignment: CrossAxisAlignment.center,
    ).p20();
  }
}

class Circle extends StatefulWidget {
  const Circle({Key? key}) : super(key: key);

  @override
  _CircleState createState() => _CircleState();
}

class _CircleState extends State<Circle> {
  @override
  Widget build(BuildContext context) {
    return 'Circle Example'.text.maxLines(2).makeCentered().circle().shadow;
  }
}
