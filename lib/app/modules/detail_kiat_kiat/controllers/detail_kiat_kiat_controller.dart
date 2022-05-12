import 'package:get/get.dart';

class DetailKiatKiatController extends GetxController {
  //TODO: Implement DetailKiatKiatController

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

  backToLoginOnChange() {
  Get.back();
  }
}
