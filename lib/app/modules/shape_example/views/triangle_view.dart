import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class TriangleView extends GetView {
  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        'Triangle '.text.bodyText1(context).make(),
        10.heightBox,
        Triangle(),
      ],
      crossAlignment: CrossAxisAlignment.center,
    ).p20();
  }
}

class Triangle extends StatefulWidget {
  Triangle({Key? key}) : super(key: key);

  @override
  _TriangleState createState() => _TriangleState();
}

class _TriangleState extends State<Triangle> {
  @override
  Widget build(BuildContext context) {
    return 'Triangle'
        .text
        .bodyText1(context)
        .makeCentered()
        .triangle(backgroundColor: Vx.randomColor)
        .w(context.screenWidth * 2 / 3)
        .h(context.screenHeight / 10);
  }
}
