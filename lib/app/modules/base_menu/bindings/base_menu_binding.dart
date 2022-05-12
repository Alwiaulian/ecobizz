import 'package:get/get.dart';

import '../controllers/base_menu_controller.dart';

class BaseMenuBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BaseMenuController>(
      () => BaseMenuController(),
    );
  }
}
