import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class AnimationView extends GetView {
  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        'Animator '.text.bodyText1(context).make(),
        10.heightBox,
        AnimatorExample(),
      ],
      crossAlignment: CrossAxisAlignment.center,
    ).p20();
  }
}

class AnimatorExample extends StatefulWidget {
  AnimatorExample({Key? key}) : super(key: key);

  @override
  _AnimatorExampleState createState() => _AnimatorExampleState();
}

class _AnimatorExampleState extends State<AnimatorExample> {
  @override
  Widget build(BuildContext context) {
    return VxAnimator<Offset>(
      duration: 5.seconds,
      curve: Curves.easeInOutExpo,
      tween: Tween<Offset>(begin: Offset(0, 0), end: Offset(300, 0)),
      builder: (context, animatorState, child) {
        return 'Animator Example'
            .text
            .bodyText1(context)
            .makeCentered()
            .box
            .width(animatorState.value.dx)
            .height(animatorState.value.dx)
            .color(Vx.randomColor)
            .alignCenter
            .make();
      },
    ).make();
  }
}
