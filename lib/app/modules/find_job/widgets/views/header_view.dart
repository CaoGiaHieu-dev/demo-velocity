import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:velocity_x_demo/app/modules/find_job/controllers/find_job_controller.dart';

class HeaderView extends GetView<FindJobController> {
  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        Icon(Icons.list_outlined).iconColor(Vx.white),
        "Find the World's most"
            .text
            .letterSpacing(2.0)
            .headline5(context)
            .fontWeight(FontWeight.bold)
            .color(Vx.white)
            .maxLines(2)
            .make()
            .py20(),
        'Amazing Job'
            .text
            .letterSpacing(2.0)
            .headline5(context)
            .color(Vx.white)
            .fontWeight(FontWeight.bold)
            .maxLines(2)
            .make(),
        VxTextField(
          controller: TextEditingController(),
          height: 50,
          fillColor: Vx.black.withOpacity(0.4),
          cursorColor: Vx.gray100,
          labelStyle: TextStyle(color: Vx.white, fontSize: 16),
          style: TextStyle(color: Vx.white, fontSize: 16),
          borderColor: Vx.gray100,
          borderRadius: 16,
          borderType: VxTextFieldBorderType.roundLine,
          icon: Icon(Icons.search).iconColor(Vx.white),
          textInputAction: TextInputAction.done,
        ).py20(),
      ],
    );
  }
}
