import 'package:ecobiz_mobile_flutter/app/routes/app_pages.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class KiatKiatController extends GetxController {
  //TODO: Implement KiatKiatController

  final count = 0.obs;

  get formNip => null;

  get formNama => null;
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

  backToLoginOnChange() {
    Get.back();
  }
  gotoDetailKiatKiat() {
    Get.toNamed(Routes.DETAIL_KIAT_KIAT);
  }

  openImagePicker(BuildContext context) {}
}
