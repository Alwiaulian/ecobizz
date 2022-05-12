import 'package:get/get.dart';

import '../controllers/detail_kiat_kiat_controller.dart';

class DetailKiatKiatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailKiatKiatController>(
      () => DetailKiatKiatController(),
    );
  }
}
