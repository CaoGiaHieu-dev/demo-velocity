import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:velocity_x_demo/app/modules/find_job/widgets/views/body_view.dart';
import 'package:velocity_x_demo/app/modules/find_job/widgets/views/header_view.dart';

import '../controllers/find_job_controller.dart';

class FindJobView extends GetView<FindJobController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Vx.gray800,
      body: VStack(
        [
          HeaderView(),
          10.heightBox,
          BodyView(),
        ],
        crossAlignment: CrossAxisAlignment.center,
      ).scrollVertical().p20().safeArea(),
    );
  }
}
