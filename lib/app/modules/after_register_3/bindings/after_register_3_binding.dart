import 'package:get/get.dart';

import '../controllers/after_register_3_controller.dart';

class AfterRegister3Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AfterRegister3Controller>(
      () => AfterRegister3Controller(),
    );
  }
}
