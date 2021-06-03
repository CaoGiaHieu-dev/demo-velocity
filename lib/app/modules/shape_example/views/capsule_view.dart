import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class CapsuleView extends GetView {
  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        'Capsule '.text.bodyText1(context).make(),
        10.heightBox,
        Capsule(),
      ],
      crossAlignment: CrossAxisAlignment.center,
    ).p20();
  }
}

class Capsule extends StatefulWidget {
  const Capsule({Key? key}) : super(key: key);

  @override
  _CapsuleState createState() => _CapsuleState();
}

class _CapsuleState extends State<Capsule> {
  @override
  Widget build(BuildContext context) {
    return 'Capsule Example'
        .text
        .white
        .bodyText1(context)
        .makeCentered()
        .capsule(backgroundColor: Vx.blue800)
        .shadow
        .w(context.screenWidth * 2 / 3);
  }
}
