import 'package:get/get.dart';

import '../controllers/color_example_controller.dart';

class ColorExampleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ColorExampleController>(
      () => ColorExampleController(),
    );
  }
}
