import 'dart:io';

import 'package:ecobiz_mobile_flutter/app/common_widget/notif_handle.dart/alert_message.dart';
import 'package:ecobiz_mobile_flutter/app/connection/user_auth_connection.dart';
import 'package:ecobiz_mobile_flutter/app/modules/after_register_1/controllers/model_get_me.dart';
import 'package:ecobiz_mobile_flutter/app/routes/app_pages.dart';
import 'package:ecobiz_mobile_flutter/data/data_source/shared_pref_secure_storage.dart';
import 'package:ecobiz_mobile_flutter/data/data_source/urls.dart';
import 'package:ecobiz_mobile_flutter/data/model/exception/custom_rest_api_exception.dart';
import 'package:ecobiz_mobile_flutter/data/model/others/login_user_cache.dart';
import 'package:ecobiz_mobile_flutter/data/model/response/get_token_response.dart';
import 'package:ecobiz_mobile_flutter/services/internal_external_service/get_device_info.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import 'package:http/http.dart' as http;
class LoginController extends GetxController {
  Rx<TextEditingController> formEmail =
      Rx<TextEditingController>(TextEditingController());
  Rx<TextEditingController> formPassword =
      Rx<TextEditingController>(TextEditingController());
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  Rx<bool> autoValidate = false.obs;
  Rx<bool> isChecked = false.obs;
  Rx<bool> showLoading = false.obs;
  Rx<bool> isHidden = true.obs;

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
    formEmail.value.dispose();
    formPassword.value.dispose();
  }

  void initForm() async {
    LoginUserCache dataUserCache =
        await SharedPrefSecureStorage.getInstance()!.getLoginUserCache();
    formEmail.value =
        new TextEditingController(text: '${dataUserCache.user_email}');
    formPassword.value =
        new TextEditingController(text: '${dataUserCache.user_password}');
    isChecked.value = dataUserCache.isChecked;
  }

  Future<String> getDeviceInfo() async {
    return await GetDeviceInfo.getInstance.getDeviceIdentifier();
  }
  static Future<GetMe?> getMe(String? token) async {
    print('HTTP GET TOKEN $token');
    var response = await http.get(
      Uri.parse('${BaseUrl.baseUrl}${Urls.getMeUrls}'),
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json',
        HttpHeaders.authorizationHeader: token!
      },
    );
      var responsGetMe = getMeFromJson(response.body);

    if (response.statusCode >= 200) {
      if(responsGetMe.name == 'success'){

      return responsGetMe;
        
      }else{
        return responsGetMe;
      }
      // print('RESPONSE PROFILE ${profileFromJson(jsonString)}');
      // profileController.profileUser = profileFromJson(jsonString);
    } 
  }

  void processToLogin(
      {String user_email = '',
      String user_password = '',
      bool isChecked = false,
      BuildContext? ctx}) async {
    autoValidate.value = true;

    if (formKey.currentState!.validate()) {
      showLoading.value = true;
      
      try {
        GetTokenResponse dataResponse = await Connection.getInstance
            .fetchTokenResponse(user_email, user_password);
            print(dataResponse.name);
            print(dataResponse.tokens);
        if (dataResponse.name == 'success'
         && dataResponse.tokens != null
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
              .saveToken(dataResponse.tokens?.accessToken ?? '');
          showLoading.value = false;
          gointToHome(dataResponse.tokens?.accessToken ?? '');
          
          getMe(dataResponse.tokens?.accessToken);
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

  void checkedBehaviourCheckbox(bool value) {
    this.isChecked.value = value;
  }

  void goToRegister() {
    Get.offAllNamed(Routes.REGISTER);
  }

  void ForgotPasswordOnChange() {
    Get.toNamed(Routes.FORGOT_PASSWORD);
  }

  void gointToHome(String token) {
    SharedPrefSecureStorage.getInstance()!.setPrefOnBoarding(3);
    
    Get.offAllNamed(Routes.BASE_MENU, arguments: token);
  }
}
