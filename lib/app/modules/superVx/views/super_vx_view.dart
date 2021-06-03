import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:velocity_x_demo/app/modules/superVx/views/animation_view.dart';
import 'package:velocity_x_demo/app/modules/superVx/views/rating_view.dart';
import 'package:velocity_x_demo/app/modules/superVx/views/stepper_view.dart';
import 'package:velocity_x_demo/app/modules/superVx/views/swiper_view.dart';
import 'package:velocity_x_demo/app/modules/superVx/views/toast_view.dart';

import '../controllers/super_vx_controller.dart';

class SuperVxView extends GetView<SuperVxController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: VxAppBar(
        title: 'Shape Example View'.text.make(),
      ),
      body: VStack(
        [
          SwiperView(),
          const VxDivider(),
          AnimationView(),
          const VxDivider(),
          ToastView(),
          const VxDivider(),
          StepperView(),
          const VxDivider(),
          RatingView()
        ],
        crossAlignment: CrossAxisAlignment.center,
      ).centered().scrollVertical().safeArea(),
    );
  }
}
