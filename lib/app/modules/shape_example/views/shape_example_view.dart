import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:velocity_x_demo/app/modules/shape_example/views/capsule_view.dart';
import 'package:velocity_x_demo/app/modules/shape_example/views/rectangle_view.dart';
import 'package:velocity_x_demo/app/modules/shape_example/views/ticked_view.dart';
import 'package:velocity_x_demo/app/modules/shape_example/views/triangle_view.dart';

import '../controllers/shape_example_controller.dart';
import 'bevel_view.dart';
import 'circle_view.dart';
import 'ellipse_view.dart';

class ShapeExampleView extends GetView<ShapeExampleController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: VxAppBar(
        title: 'Shape Example View'.text.make(),
      ),
      body: VStack(
        [
          CircleView(),
          const VxDivider(),
          CapsuleView(),
          const VxDivider(),
          EllipseView(),
          const VxDivider(),
          RectangleView(),
          const VxDivider(),
          BevelView(),
          const VxDivider(),
          TriangleView(),
          const VxDivider(),
          TickedView()
        ],
        crossAlignment: CrossAxisAlignment.center,
      ).centered().scrollVertical(),
    );
  }
}
