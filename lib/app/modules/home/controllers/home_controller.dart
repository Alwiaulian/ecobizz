import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecobiz_mobile_flutter/app/routes/app_pages.dart';
import 'package:ecobiz_mobile_flutter/data/data_source/shared_pref_secure_storage.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {

  String token ='';
SharedPrefSecureStorage sharedPref = SharedPrefSecureStorage.getInstance()!;

    Rx<int> currentIndexBanner = 0.obs;
  final CarouselController controllerCarousel = CarouselController();
void onPageChange(int index) {
    currentIndexBanner.value = index;
  }

  @override
  void onInit() {
    getDataToken(Get.arguments);
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }
  Future<void> refreshView() async {
    // fetchDataBanner(recall: true);
    // fetchDataCategory(recall: true);
    // fetchDataWebinar(recall: true);
    // fetchDataTerpopuler(recall: true);
    // fetchDataMinat(recall: true);
    await Future.delayed(const Duration(seconds: 3));
    update(['homeView']);
    //doSomething
  }

  @override
  void onClose() {}

void getDataToken(dynamic arguments) async {
    if (arguments == null)
      token = await sharedPref.getToken();
    else
      token = arguments;

    
  }

gotoKiatKiat() {
    Get.toNamed(Routes.KIAT_KIAT);
  }
}
