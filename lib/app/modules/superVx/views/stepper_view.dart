import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class StepperView extends GetView {
  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        'Stepper'.text.bodyText1(context).make(),
        10.heightBox,
        StepperExample()
      ],
      crossAlignment: CrossAxisAlignment.center,
    ).p20();
  }
}

class StepperExample extends StatefulWidget {
  const StepperExample({Key? key}) : super(key: key);

  @override
  _StepperExampleState createState() => _StepperExampleState();
}

class _StepperExampleState extends State<StepperExample> {
  @override
  Widget build(BuildContext context) {
    return VxStepper(
      onChange: (value) {},
    ).p20();
  }
}
