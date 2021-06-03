import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:velocity_x_demo/app/modules/layout_example/views/box_view.dart';
import 'package:velocity_x_demo/app/modules/layout_example/views/card_view.dart';
import 'package:velocity_x_demo/app/modules/layout_example/views/list_view.dart';

import '../controllers/layout_example_controller.dart';

class LayoutExampleView extends GetView<LayoutExampleController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: VxAppBar(
        title: 'Layout Example View'.text.make(),
      ),
      body: VStack(
        [
          BoxView(),
          const VxDivider(),
          CardView(),
          const VxDivider(),
          VxListView(),
        ],
        crossAlignment: CrossAxisAlignment.center,
      ).centered().scrollVertical(),
    );
  }
}
