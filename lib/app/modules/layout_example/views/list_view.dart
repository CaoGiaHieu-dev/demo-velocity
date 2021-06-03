import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class VxListView extends GetView {
  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        'List Example'.text.bodyText1(context).make(),
        10.heightBox,
        ListDisc(),
        10.heightBox,
        ListDecimal(),
      ],
      crossAlignment: CrossAxisAlignment.center,
    ).p20();
  }
}

class ListDisc extends StatefulWidget {
  ListDisc({Key? key}) : super(key: key);

  @override
  _ListDiscState createState() => _ListDiscState();
}

class _ListDiscState extends State<ListDisc> {
  @override
  Widget build(BuildContext context) {
    return VxDiscList(
      ['VxDiscList ', 'Example'],
    ).box.border().make();
  }
}

class ListDecimal extends StatefulWidget {
  ListDecimal({Key? key}) : super(key: key);

  @override
  _ListDecimalState createState() => _ListDecimalState();
}

class _ListDecimalState extends State<ListDecimal> {
  @override
  Widget build(BuildContext context) {
    return VxDecimalList([
      'VxDecimalList ',
      'Example',
    ]).box.border().make();
  }
}
