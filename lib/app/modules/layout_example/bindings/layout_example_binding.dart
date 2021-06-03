import 'package:get/get.dart';

import '../controllers/layout_example_controller.dart';

class LayoutExampleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LayoutExampleController>(
      () => LayoutExampleController(),
    );
  }
}
