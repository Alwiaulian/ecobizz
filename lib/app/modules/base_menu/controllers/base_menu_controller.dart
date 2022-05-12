import 'package:get/get.dart';

class BaseMenuController extends GetxController {

    // PageController pageController = PageController();

  Rx<int> currentPage = 0.obs;

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
  void onSelectPage(int value) {
    this.currentPage.value = value;
    // pageController.animateToPage(
    //   value,
    //   duration: const Duration(milliseconds: 250),
    //   curve: Curves.easeInOutQuint,
    // );
  }
}
