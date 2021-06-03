import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class CardMatchedView extends GetView {
  @override
  Widget build(BuildContext context) {
    return VxCard(
      VStack(
        [
          HStack(
            [
              'Master Card'.text.bodyText2(context).black.make(),
              Icon(Icons.card_giftcard)
            ],
            alignment: MainAxisAlignment.spaceBetween,
          ).w(double.infinity).p20(),
          'Sr. Product Desinger'
              .text
              .bodyText1(context)
              .fontWeight(FontWeight.bold)
              .black
              .make()
              .px20(),
          HStack(
            [
              'User Interface'
                  .text
                  .bodyText1(context)
                  .makeCentered()
                  .box
                  .height(40)
                  .padding(EdgeInsets.all(10))
                  .withRounded()
                  .color(Vx.white)
                  .make(),
              10.widthBox,
              'User Research /Flow'
                  .text
                  .bodyText1(context)
                  .makeCentered()
                  .box
                  .height(40)
                  .padding(EdgeInsets.all(10))
                  .withRounded()
                  .color(Vx.white)
                  .make(),
            ],
          ).px20().py16(),
          'Be in first 31 application'
              .text
              .bodyText1(context)
              .make()
              .px20()
              .py12(),
          HStack(
            [
              List.generate(
                3,
                (index) => index != 2
                    ? Icon(Icons.person)
                        .circle(backgroundColor: (Vx.white))
                        .w(30)
                    : '40+'
                        .text
                        .bodyText2(context)
                        .makeCentered()
                        .circle(backgroundColor: Vx.gray400)
                        .w(30),
              ).hStack(),
              '6 hours ago'.text.bodyText1(context).make()
            ],
            alignment: MainAxisAlignment.spaceBetween,
          ).px20().w(double.infinity).h(50),
        ],
        alignment: MainAxisAlignment.spaceEvenly,
      ),
    )
        .color(Vx.green300)
        .withRounded(value: 20)
        .elevation(20)
        .shadowColor(Vx.green200)
        .make()
        .w(double.infinity);
  }
}
