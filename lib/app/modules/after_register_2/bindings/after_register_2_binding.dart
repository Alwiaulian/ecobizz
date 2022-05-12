import 'package:get/get.dart';

import '../controllers/after_register_2_controller.dart';

class AfterRegister2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AfterRegister2Controller>(
      () => AfterRegister2Controller(),
    );
  }
}
