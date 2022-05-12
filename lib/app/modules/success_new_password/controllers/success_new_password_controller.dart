import 'package:ecobiz_mobile_flutter/app/routes/app_pages.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class SuccessNewPasswordController extends GetxController {

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;

  openImagePicker(BuildContext context) {}
  
  void goToLogin() {
    Get.offAllNamed(Routes.LOGIN);
  }
}
