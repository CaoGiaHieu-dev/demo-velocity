import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:velocity_x_demo/app/modules/find_job/widgets/views/category_view.dart';

import 'card_matched_view.dart';

class BodyView extends GetView {
  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        'Job Matched'
            .text
            .bodyText1(context)
            .white
            .make()
            .box
            .alignCenterLeft
            .make()
            .py12(),
        CardMatchedView().py12(),
        'Job Category'
            .text
            .bodyText1(context)
            .white
            .make()
            .box
            .alignCenterLeft
            .make()
            .py12(),
        CategoryView()
      ],
    );
  }
}
