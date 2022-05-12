import 'package:ecobiz_mobile_flutter/app/common_widget/notif_handle.dart/alert_message.dart';
import 'package:ecobiz_mobile_flutter/app/connection/user_auth_connection.dart';
import 'package:ecobiz_mobile_flutter/app/routes/app_pages.dart';
import 'package:ecobiz_mobile_flutter/data/data_source/shared_pref_secure_storage.dart';
import 'package:ecobiz_mobile_flutter/data/model/exception/custom_rest_api_exception.dart';
import 'package:ecobiz_mobile_flutter/data/model/others/login_user_cache.dart';
import 'package:ecobiz_mobile_flutter/data/model/others/register_user_cache.dart';
import 'package:ecobiz_mobile_flutter/data/model/response/get_token_response.dart';
import 'package:ecobiz_mobile_flutter/data/model/response/register_response.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';



class RegisterController extends GetxController {

  TextEditingController formEmail = TextEditingController();
  TextEditingController formPassword = TextEditingController();
  TextEditingController formPhone = TextEditingController(); 
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  Rx<bool> autoValidate = false.obs;
  Rx<bool> isChecked = false.obs;
  Rx<bool> showLoading = false.obs;
  Rx<bool> isHidden = true.obs;
   GetTokenResponse? dataResponseLogin;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }
  void setHiddenTextValue() {
    this.isHidden.value = !this.isHidden.value;
  }

  @override
  void onReady() {
    super.onReady();
  }
   

  @override
  void onClose() {
    clearDispose();

  }
  void clearDispose() {

    formEmail.dispose();
    formPassword.dispose();
    formPhone.dispose();
  }

  void processToRegister(
      {

      String user_email = '',
      String user_password = '',
      int user_mobile_number = 0 ,
      bool isChecked = false,
      BuildContext? ctx}) async {
    autoValidate.value = true;

    if (formKey.currentState!.validate()) {
      showLoading.value = true;
      
      try {
        RegisterResponse dataResponse = await Connection.getInstance
            .fetchRegisterResponse(user_email,user_mobile_number, user_password,);
            print(dataResponse.name);
            print(dataResponse.tokens);
        if (dataResponse.name == 'success'
         && dataResponse.tokens != null
         ) {
          showLoading.value = false;
          if (this.isChecked.value) {
            SharedPrefSecureStorage.getInstance()!.setRegisterUserCache(
              RegisterUserCache(
                user_email: user_email,
                user_mobile_number: user_mobile_number,
                user_password: user_password,
                isChecked: isChecked,
              ),
            );
          }
          await processToLogin(
            user_email: formEmail.text,
            user_password: formPassword.text
          ); 

           Get.toNamed(Routes.AFTER_REGISTER_1,arguments: {'user_id': dataResponseLogin?.tokens?.user_id, 'user_mobile_number' : formPhone.text, 'user_email' : formEmail.text});

          
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
    }
  }

 Future <void> processToLogin(
      {String user_email = '',
      String user_password = '',
      
      bool isChecked = false,
      BuildContext? ctx}) async {
    autoValidate.value = true;

    if (formKey.currentState!.validate()) {
      showLoading.value = true;
      
      try {
         dataResponseLogin = await Connection.getInstance
            .fetchTokenResponse(user_email, user_password);
            print(dataResponseLogin?.name);
            print(dataResponseLogin?.tokens);
              print('dataResponsLogin ${dataResponseLogin?.tokens?.user_id}');
         
        if (dataResponseLogin?.name == 'success'
         && dataResponseLogin?.tokens != null
         ) {
          showLoading.value = false;
          if (this.isChecked.value) {
            SharedPrefSecureStorage.getInstance()!.setLoginUserCache(
              LoginUserCache(
                user_email: user_email,
                user_password: user_password,
                isChecked: isChecked,
              ),
            );
          }
          SharedPrefSecureStorage.getInstance()!
              .saveToken(dataResponseLogin?.tokens?.accessToken ?? '');
          showLoading.value = false;
          // gointToHome(dataResponseLogin.tokens?.accessToken ?? '');
        } else {
          showLoading.value = false;
          print(dataResponseLogin);
          AlertMessage.errorMessage(ctx!,
              message: dataResponseLogin?.message ?? 'Error: Error Message',
              onClose: false);
        }
      } on CustomRestApiException catch (e) {
        showLoading.value = false;
        AlertMessage.errorMessage(ctx!, message: e.message, onClose: false);
      }
    }
  }
  

 
  void checkedBehaviourCheckbox(bool value) {
    this.isChecked.value = value;
  }
void goToRegister() {
    Get.toNamed(Routes.REGISTER);
  }
 void goToRegister1() {
    Get.offNamed(Routes.AFTER_REGISTER_1);
  } 
void goToLogin() {
    Get.toNamed(Routes.LOGIN);
  }
}

