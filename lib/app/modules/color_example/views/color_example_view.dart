import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';
import '../controllers/color_example_controller.dart';

enum RandomType {
  randomColor,
  randomOpaqueColor,
  randomPrimaryColor,
}

class ColorExampleView extends GetView<ColorExampleController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: VxAppBar(
        title: 'Color Example View'.text.make(),
      ),
      body: Container(
        width: context.screenWidth,
        alignment: Alignment.center,
        child: Wrap(
          spacing: 30,
          alignment: WrapAlignment.center,
          direction: Axis.vertical,
          children: <Widget>[
            RandomColor(
              title: 'randomColor',
              randomType: RandomType.randomColor,
            ),
            RandomColor(
              title: 'randomOpaqueColor',
              randomType: RandomType.randomOpaqueColor,
            ),
            RandomColor(
              title: 'randomPrimaryColor',
              randomType: RandomType.randomPrimaryColor,
            ),
            const ColorCustomer(),
          ],
        ),
      ),
    );
  }
}

class RandomColor extends StatefulWidget {
  RandomColor({Key? key, this.randomType, this.title}) : super(key: key);
  final RandomType? randomType;
  final String? title;

  @override
  _RandomColorState createState() => _RandomColorState();
}

class _RandomColorState extends State<RandomColor> {
  late Timer _timer = Timer.periodic(2.seconds, (_) {
    setState(() {});
  });
  Color getRandomtype() {
    switch (widget.randomType) {
      case RandomType.randomColor:
        return Vx.randomColor;
      case RandomType.randomOpaqueColor:
        return Vx.randomColor;
      case RandomType.randomPrimaryColor:
        return Vx.randomPrimaryColor;
      default:
        return Colors.black;
    }
  }

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
    return VxTextBuilder(widget.title!)
        .color(getRandomtype())
        .bodyText1(context)
        .make();
  }
}

class ColorCustomer extends StatefulWidget {
  const ColorCustomer({Key? key}) : super(key: key);

  @override
  _ColorCustomerState createState() => _ColorCustomerState();
}

class _ColorCustomerState extends State<ColorCustomer> {
  @override
  Widget build(BuildContext context) {
    return 'Color Customer'.text.red200.bodyText1(context).make();
  }
}
