import 'package:ecobiz_mobile_flutter/app/routes/app_pages.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class NewPasswordController extends GetxController {
  Rx<TextEditingController> formEmail =
      Rx<TextEditingController>(TextEditingController());
  Rx<TextEditingController> formPassword =
      Rx<TextEditingController>(TextEditingController());
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  Rx<bool> autoValidate = false.obs;
  Rx<bool> isChecked = false.obs;
  Rx<bool> showLoading = false.obs;
  Rx<bool> isHidden = true.obs;
  Rx<bool> isHiddenRepeat = true.obs;


  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }
  void setHiddenTextValue() {
    this.isHidden.value = !this.isHidden.value;
  }

  void setHiddenRepeatTextValue() {
    this.isHiddenRepeat.value = !this.isHiddenRepeat.value;
  }
  @override
  void onReady() {
    super.onReady();
  }
   

  @override
  void onClose() {}
 
  void checkedBehaviourCheckbox(bool value) {
    this.isChecked.value = value;
  }
void goToRegister() {
    Get.toNamed(Routes.REGISTER);
  }
 void goToSuccess() {
    Get.toNamed(Routes.SUCCESS_NEW_PASSWORD);
  } 
void goToLogin() {
    Get.toNamed(Routes.LOGIN);
  }

    backToLoginOnChange() => Get.back();
}

