
import 'package:ecobiz_mobile_flutter/app/res/path_image_icon.dart';
import 'package:ecobiz_mobile_flutter/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  final List<String> pathImage = [
    PathImage.onBoarding1,
    PathImage.onBoarding2,
    PathImage.onBoarding3,

  ];

  Rx<int> currentPage = 0.obs;
  PageController pageController = PageController();

  @override
  void onInit() {
    super.onInit();
    pageController = PageController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    pageController.dispose();
  }

  // void indexOnChange({int currentPage = 0, BuildContext? context}) {
  //   if (currentPage <= 1) {
  //     pageController.nextPage(
  //         duration: const Duration(
  //             milliseconds: DurationAnimate.durationAnimateOnboarding),
  //         curve: Curves.easeInOutQuint);
  //     this.currentPage.value = currentPage + 1;
  //   } else {
  //     // SharedPrefSecureStorage.getInstance()!.setPrefOnBoarding(2);
  //     // Get.offAllNamed(Routes.NEW_LOGIN);
  //     Get.offAllNamed(Routes.HOME);
  //   }
  // }

  // void skipOnboarding() {
  //   // SharedPrefSecureStorage.getInstance()!.setPrefOnBoarding(2);
  //   // Get.offAllNamed(Routes.NEW_LOGIN);
  //   Get.offAllNamed(Routes.HOME);
  // }

  void goToLogin() {
    Get.offAllNamed(Routes.LOGIN);
  }

  void goToRegister() {
    Get.offAllNamed(Routes.REGISTER);
  }

   void goToRegister1() {
    Get.offAllNamed(Routes.AFTER_REGISTER_1);
   }
}
