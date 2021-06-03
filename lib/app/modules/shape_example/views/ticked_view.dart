import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class TickedView extends GetView {
  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        'Ticked '.text.bodyText1(context).make(),
        10.heightBox,
        Ticked(),
      ],
      crossAlignment: CrossAxisAlignment.center,
    ).p20();
  }
}

class Ticked extends StatefulWidget {
  Ticked({Key? key}) : super(key: key);

  @override
  _TickedState createState() => _TickedState();
}

class _TickedState extends State<Ticked> {
  @override
  Widget build(BuildContext context) {
    return VxTicket(
      child: 'Ticket example'.text.bodyText1(context).makeCentered(),
      backgroundColor: Vx.randomColor,
      width: context.screenWidth * 2 / 3,
      height: context.screenHeight / 10,
      isTwoSided: true,
    );
  }
}
