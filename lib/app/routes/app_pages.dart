import 'package:get/get.dart';

import 'package:velocity_x_demo/app/modules/color_example/bindings/color_example_binding.dart';
import 'package:velocity_x_demo/app/modules/color_example/views/color_example_view.dart';
import 'package:velocity_x_demo/app/modules/find_job/bindings/find_job_binding.dart';
import 'package:velocity_x_demo/app/modules/find_job/views/find_job_view.dart';
import 'package:velocity_x_demo/app/modules/home/bindings/home_binding.dart';
import 'package:velocity_x_demo/app/modules/home/views/home_view.dart';
import 'package:velocity_x_demo/app/modules/layout_example/bindings/layout_example_binding.dart';
import 'package:velocity_x_demo/app/modules/layout_example/views/layout_example_view.dart';
import 'package:velocity_x_demo/app/modules/shape_example/bindings/shape_example_binding.dart';
import 'package:velocity_x_demo/app/modules/shape_example/views/shape_example_view.dart';
import 'package:velocity_x_demo/app/modules/superVx/bindings/super_vx_binding.dart';
import 'package:velocity_x_demo/app/modules/superVx/views/super_vx_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.COLOR_EXAMPLE,
      page: () => ColorExampleView(),
      binding: ColorExampleBinding(),
    ),
    GetPage(
      name: _Paths.LAYOUT_EXAMPLE,
      page: () => LayoutExampleView(),
      binding: LayoutExampleBinding(),
    ),
    GetPage(
      name: _Paths.SHAPE_EXAMPLE,
      page: () => ShapeExampleView(),
      binding: ShapeExampleBinding(),
    ),
    GetPage(
      name: _Paths.SUPER_VX,
      page: () => SuperVxView(),
      binding: SuperVxBinding(),
    ),
    GetPage(
      name: _Paths.FIND_JOB,
      page: () => FindJobView(),
      binding: FindJobBinding(),
    ),
  ];
}
