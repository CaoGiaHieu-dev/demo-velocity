import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class SwiperView extends GetView {
  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        'Swiper '.text.bodyText1(context).make(),
        10.heightBox,
        Swiper(),
      ],
      crossAlignment: CrossAxisAlignment.center,
    ).p20();
  }
}

class Swiper extends StatefulWidget {
  Swiper({Key? key}) : super(key: key);

  @override
  _SwiperState createState() => _SwiperState();
}

class _SwiperState extends State<Swiper> {
  @override
  Widget build(BuildContext context) {
    return List.generate(
      100,
      (index) => 'Item $index'
          .text
          .bodyText1(context)
          .makeCentered()
          .box
          .border()
          .color(Vx.randomColor)
          .make(),
    ).swiper(
      isFastScrollingEnabled: true,
      autoPlay: true,
      autoPlayCurve: Curves.easeIn,
    );
  }
}
