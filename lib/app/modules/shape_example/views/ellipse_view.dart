import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class EllipseView extends GetView {
  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        'Ellipse '.text.bodyText1(context).make(),
        10.heightBox,
        Ellipse(),
      ],
      crossAlignment: CrossAxisAlignment.center,
    ).p20();
  }
}

class Ellipse extends StatefulWidget {
  const Ellipse({Key? key}) : super(key: key);

  @override
  _EllipseState createState() => _EllipseState();
}

class _EllipseState extends State<Ellipse> {
  @override
  Widget build(BuildContext context) {
    return 'Ellipse Example'
        .text
        .makeCentered()
        .ellipse(width: context.screenWidth / 2)
        .shadow;
  }
}
