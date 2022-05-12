import 'package:ecobiz_mobile_flutter/app/routes/app_pages.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class ProfilController extends GetxController {

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

void processsToLogOut() {
    Get.toNamed(Routes.LOGIN);
  }

  gotoEditProfile() {
    Get.toNamed(Routes.EDIT_PROFILE);
  }
}