import 'dart:async';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class CardView extends GetView {
  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        'Card Example'.text.bodyText1(context).make(),
        10.heightBox,
        Card(),
      ],
      crossAlignment: CrossAxisAlignment.center,
    ).p20();
  }
}

class Card extends StatefulWidget {
  const Card({Key? key}) : super(key: key);

  @override
  _CardState createState() => _CardState();
}

class _CardState extends State<Card> {
  late Timer _timer = Timer.periodic(3.seconds, (timer) {
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
    return 'Card'
        .text
        .bodyText1(context)
        .make()
        .centered()
        .card
        .elevation(20)
        .shadowColor(Vx.randomColor)
        .make()
        .box
        .width(context.screenWidth / 5)
        .height(context.height / 10)
        .make();
  }
}
