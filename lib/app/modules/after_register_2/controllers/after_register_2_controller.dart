import 'package:ecobiz_mobile_flutter/app/modules/after_register_2/controllers/model_provinces.dart';
import 'package:ecobiz_mobile_flutter/app/modules/after_register_2/controllers/model_regencies.dart';
import 'package:ecobiz_mobile_flutter/app/modules/after_register_2/controllers/remote_service_provinces.dart';
import 'package:ecobiz_mobile_flutter/app/modules/after_register_2/controllers/remote_service_regencies.dart';
import 'package:ecobiz_mobile_flutter/app/routes/app_pages.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class AfterRegister2Controller extends GetxController {
  TextEditingController formSentraLocation = TextEditingController();
  RxList<DataProvinces>? dataProvinces = <DataProvinces>[].obs;
   RxList<DataRegencies>? dataRegencies = <DataRegencies>[].obs;
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    getAllProvinces();
  }

  @override
  void onReady() {
    super.onReady();
  }

  Future<void> getAllProvinces() async {
    var category = await RemoteSeviceProvinces.getProvinces();
    print("category user ${category?.data[0].name}");
    if (category != null) {
      print("category data length : ${category.data.length}");
      try {
      dataProvinces?.addAll(category.data);
      } catch (e) {
        print("error add $e");
      }
      print("category data length2 : ${dataProvinces?.length}");
      print("get data cat ${dataProvinces?[0].name}");
      // print('GET Details of ${detailsBanner.value.data!.title}');
    }
    // ignore: invalid_use_of_protected_member
    update();
  }

  Future<void> getAllRegencies() async {
    var category = await RemoteSeviceRegencies.getRegencies();
    print("category user ${category?.data[0].name}");
    if (category != null) {
      print("category data length : ${category.data.length}");
      try {
      dataRegencies?.addAll(category.data);
      } catch (e) {
        print("error add $e");
      }
      print("category data length2 : ${dataRegencies?.length}");
      print("get data cat ${dataRegencies?[0].name}");
      // print('GET Details of ${detailsBanner.value.data!.title}');
    }
    // ignore: invalid_use_of_protected_member
    update();
  }

  @override
  void onClose() {}
  void increment() => count.value++;


 void goToRegister3() {
    Get.toNamed(Routes.AFTER_REGISTER_3);
  } 
  backToLoginOnChange() => Get.back();
    
}
