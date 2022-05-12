import 'package:get/get.dart';

import '../controllers/after_register_1_controller.dart';

class AfterRegister1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AfterRegister1Controller>(
      () => AfterRegister1Controller(),
    );
  }
}
