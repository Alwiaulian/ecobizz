import 'package:ecobiz_mobile_flutter/app/common_widget/notif_handle.dart/alert_message.dart';
import 'package:ecobiz_mobile_flutter/app/connection/user_auth_connection.dart';
import 'package:ecobiz_mobile_flutter/app/routes/app_pages.dart';
import 'package:ecobiz_mobile_flutter/data/model/exception/custom_rest_api_exception.dart';
import 'package:ecobiz_mobile_flutter/data/model/response/forgot_password_response.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordController extends GetxController {

  TextEditingController formEmail = TextEditingController();
    TextEditingController formPhone = TextEditingController();

  Rx<bool> showLoading = false.obs;

  Rx<bool> isChecked = false.obs;  

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Rx<bool> autoValidate = false.obs;

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
  void onClose() {
        clearDispose();
  }
    backToLoginOnChange() => Get.back();
    

  void clearDispose() {

    formEmail.dispose();
    formPhone.dispose();
  }
  void processToForgotPassword(
      {

      String user_email = '',
      bool isChecked = false,
      BuildContext? ctx}) async {
    autoValidate.value = true;

    // if (formKey.currentState!.validate()) {
      showLoading.value = true;
      
      try {
        ForgotPasswordResponse dataResponse = await Connection.getInstance
            .fetchForgotResponse(user_email);
            print(dataResponse.name);
        if (dataResponse.name == 'success'
        //  && dataResponse.tokens != null
         ) {
          showLoading.value = false;
          if (this.isChecked.value) {
            // SharedPrefSecureStorage.getInstance()!.setForgotPasswordUserCache(
            //   ForgotPasswordUserCache(
            //     user_email: user_email,
            //   ),
            // );
          }
          Get.toNamed(Routes.SUCCESS_NEW_PASSWORD);
          // Get.toNamed(Routes.AFTER_REGISTER_1,arguments: {'user_email': formEmail.text, 'user_password': formPassword.text});
          // SharedPrefSecureStorage.getInstance()!
          //     .saveToken(dataResponse.tokens?.accessToken ?? '');
          // showLoading.value = false;
          // gointToHome(dataResponse.tokens?.accessToken ?? '');
        } else {
          showLoading.value = false;
          print(dataResponse);
          AlertMessage.errorMessage(ctx!,
              message: dataResponse.message ?? 'Error: Error Message',
              onClose: false);
        }
      } on CustomRestApiException catch (e) {
        showLoading.value = false;
        AlertMessage.errorMessage(ctx!, message: e.message, onClose: false);
      }
    // }
  }

  void increment() => count.value++;

  verify0TPonChange() {

    Get.toNamed(Routes.OTP);
  }
}
