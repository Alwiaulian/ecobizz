import 'package:get/get.dart';

import '../controllers/kiat_kiat_controller.dart';

class KiatKiatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<KiatKiatController>(
      () => KiatKiatController(),
    );
  }
}
