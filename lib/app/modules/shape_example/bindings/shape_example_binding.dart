import 'package:get/get.dart';

import '../controllers/shape_example_controller.dart';

class ShapeExampleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ShapeExampleController>(
      () => ShapeExampleController(),
    );
  }
}
