import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class ToastView extends GetView {
  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        'Toast '.text.bodyText1(context).make(),
        10.heightBox,
        ShowPop(),
        10.heightBox,
        ShowLoading(),
      ],
      crossAlignment: CrossAxisAlignment.center,
    ).p20();
  }
}

class ShowPop extends StatefulWidget {
  ShowPop({Key? key}) : super(key: key);

  @override
  _ShowPopState createState() => _ShowPopState();
}

class _ShowPopState extends State<ShowPop> {
  @override
  Widget build(BuildContext context) {
    return 'Show Pop'
        .text
        .bodyText1(context)
        .make()
        .centered()
        .box
        .color(Vx.gray300)
        .make()
        .wh(
          context.screenWidth * 1 / 3,
          context.screenHeight / 15,
        )
        .onInkTap(() {
      context.showToast(msg: 'Pop!');
    });
  }
}

class ShowLoading extends StatefulWidget {
  ShowLoading({Key? key}) : super(key: key);

  @override
  _ShowLoadingState createState() => _ShowLoadingState();
}

class _ShowLoadingState extends State<ShowLoading> {
  @override
  Widget build(BuildContext context) {
    return 'Show Loading'
        .text
        .bodyText1(context)
        .makeCentered()
        .box
        .color(Vx.gray300)
        .make()
        .wh(
          context.screenWidth * 1 / 3,
          context.screenHeight / 15,
        )
        .onInkTap(() {
      Future.delayed(
          2.seconds, context.showLoading(msg: 'Loading ...') as Function());
    });
  }
}
