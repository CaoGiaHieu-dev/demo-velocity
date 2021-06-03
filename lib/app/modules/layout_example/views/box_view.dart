import 'dart:async';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class BoxView extends GetView {
  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        'Box Example'.text.bodyText1(context).make(),
        10.heightBox,
        CustomBox(),
        10.heightBox,
        AnimateBox(),
      ],
      crossAlignment: CrossAxisAlignment.center,
    ).p20();
  }
}

class CustomBox extends StatefulWidget {
  const CustomBox({Key? key}) : super(key: key);

  @override
  _CustomBoxState createState() => _CustomBoxState();
}

class _CustomBoxState extends State<CustomBox> {
  @override
  Widget build(BuildContext context) {
    return VxBox(
            child: 'Custom Box'
                .text
                .bodyText1(context)
                .color(Vx.trueGray50)
                .make())
        .color(Vx.red500)
        .shadow
        .shadow3xl
        .customRounded(
          BorderRadius.all(
            Radius.circular(16.0),
          ),
        )
        .alignCenter
        .height(context.height / 20)
        .width(context.screenWidth / 2)
        .make();
  }
}

class AnimateBox extends StatefulWidget {
  const AnimateBox({Key? key}) : super(key: key);

  @override
  _AnimateBoxState createState() => _AnimateBoxState();
}

class _AnimateBoxState extends State<AnimateBox> {
  late Timer _timer = Timer.periodic(3.seconds, (_) {
    setState(() {});
  });
  @override
  void initState() {
    _timer.tick;
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return VxAnimatedBox(
      child: 'Animate Box'.text.bodyText1(context).color(Vx.randomColor).make(),
    )
        .seconds(sec: 2)
        .fastOutSlowIn
        .alignCenter
        .height(context.height / 20)
        .width(context.screenWidth / 2)
        .color(Vx.randomColor)
        .make();
  }
}
