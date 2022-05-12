import 'package:ecobiz_mobile_flutter/app/routes/app_pages.dart';
import 'package:ecobiz_mobile_flutter/data/data_source/shared_pref_secure_storage.dart';
import 'package:get/get.dart';

class BaseControllerConfig extends GetxController {
  @override
  void onClose() {
    super.onClose();
  }

  @override
  void onInit() {
    initializeData();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void disposeId(Object id) {
    super.disposeId(id);
  }

  void processsToLogOut() async {
    SharedPrefSecureStorage.getInstance()!.setPrefOnBoarding(2);
    Get.offAllNamed(Routes.LOGIN);
  }

  void initializeData() async {}
}
