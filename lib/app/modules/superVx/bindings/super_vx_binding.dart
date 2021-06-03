import 'package:get/get.dart';

import '../controllers/super_vx_controller.dart';

class SuperVxBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SuperVxController>(
      () => SuperVxController(),
    );
  }
}
