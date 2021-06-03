import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class CategoryView extends GetView {
  @override
  Widget build(BuildContext context) {
    return List.generate(
      50,
      (index) => VxCard(
        VStack(
          [
            Icon(Icons.task)
                .box
                .color(Vx.white)
                .withRounded(value: 7)
                .p4
                .make(),
            'Job title'.text.black.bodyText2(context).make(),
            '4.3K Jobs'
                .text
                .black
                .bodyText1(context)
                .fontWeight(FontWeight.bold)
                .make(),
            'View Job'
                .text
                .bodyText1(context)
                .white
                .makeCentered()
                .continuousRectangle(
                  backgroundColor: Vx.black,
                )
                .h(30)
          ],
          alignment: MainAxisAlignment.spaceEvenly,
        ).px16(),
      ).color(Vx.randomOpaqueColor).withRounded().make(),
    ).swiper(
      scrollDirection: Axis.horizontal,
      autoPlay: true,
      autoPlayInterval: 10.seconds,
      isFastScrollingEnabled: true,
      viewportFraction: 0.4,
    );
  }
}
