import 'package:get/get.dart';

import '../controllers/find_job_controller.dart';

class FindJobBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FindJobController>(
      () => FindJobController(),
    );
  }
}
