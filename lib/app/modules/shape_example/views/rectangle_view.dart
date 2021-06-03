import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class RectangleView extends GetView {
  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        'Rectangle '.text.bodyText1(context).make(),
        10.heightBox,
        Rectangle(),
      ],
      crossAlignment: CrossAxisAlignment.center,
    ).p20();
  }
}

class Rectangle extends StatefulWidget {
  const Rectangle({Key? key}) : super(key: key);

  @override
  _RectangleState createState() => _RectangleState();
}

class _RectangleState extends State<Rectangle> {
  @override
  Widget build(BuildContext context) {
    return 'Rectangle Example'
        .text
        .bodyText1(context)
        .color(Vx.warmGray100)
        .makeCentered()
        .continuousRectangle()
        .shadow
        .w(context.screenWidth * 2 / 3)
        .h(context.screenHeight / 10);
  }
}
