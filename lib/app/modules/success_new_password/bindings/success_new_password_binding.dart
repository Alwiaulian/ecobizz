import 'package:get/get.dart';

import '../controllers/success_new_password_controller.dart';

class SuccessNewPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SuccessNewPasswordController>(
      () => SuccessNewPasswordController(),
    );
  }
}
