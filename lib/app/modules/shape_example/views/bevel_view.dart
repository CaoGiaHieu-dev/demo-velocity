import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class BevelView extends GetView {
  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        'Bevel'.text.bodyText1(context).make(),
        10.heightBox,
        Bevel(),
      ],
      crossAlignment: CrossAxisAlignment.center,
    ).p20();
  }
}

class Bevel extends StatefulWidget {
  Bevel({Key? key}) : super(key: key);

  @override
  _BevelState createState() => _BevelState();
}

class _BevelState extends State<Bevel> {
  @override
  Widget build(BuildContext context) {
    return 'Bevel Example'
        .text
        .bodyText1(context)
        .makeCentered()
        .bevel(backgroundColor: Vx.randomColor)
        .shadow
        .w(context.screenWidth * 2 / 3)
        .h(context.screenHeight / 10);
  }
}
