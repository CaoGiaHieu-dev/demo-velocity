import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:velocity_x_demo/app/routes/app_pages.dart';
import 'package:velocity_x/velocity_x.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: VxAppBar(
        title: 'Velocity Example'.text.make(),
      ),
      body: Container(
        width: context.screenWidth,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            MaterialButton(
              color: Vx.gray200,
              onPressed: () => Get.toNamed(Routes.COLOR_EXAMPLE),
              child: Text('Colors'),
            ),
            MaterialButton(
              color: Vx.gray200,
              onPressed: () => Get.toNamed(Routes.LAYOUT_EXAMPLE),
              child: Text('Layout'),
            ),
            MaterialButton(
              color: Vx.gray200,
              onPressed: () => Get.toNamed(Routes.SHAPE_EXAMPLE),
              child: Text('Shape'),
            ),
            MaterialButton(
              color: Vx.gray200,
              onPressed: () => Get.toNamed(Routes.SUPER_VX),
              child: Text('Super VX'),
            ),
            MaterialButton(
              color: Vx.gray200,
              onPressed: () => Get.toNamed(Routes.FIND_JOB),
              child: Text('Profile Example'),
            ),
          ],
        ),
      ),
    );
  }
}
