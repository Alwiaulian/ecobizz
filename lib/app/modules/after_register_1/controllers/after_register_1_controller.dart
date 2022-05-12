import 'dart:convert';
import 'dart:io';

import 'package:ecobiz_mobile_flutter/app/common_widget/notif_handle.dart/alert_message.dart';
import 'package:ecobiz_mobile_flutter/app/connection/user_auth_connection.dart';
import 'package:ecobiz_mobile_flutter/app/modules/after_register_1/controllers/model_after_register.dart';
import 'package:ecobiz_mobile_flutter/app/modules/after_register_1/controllers/model_category_users.dart';
import 'package:ecobiz_mobile_flutter/app/modules/after_register_1/controllers/remote_sevice.dart';
import 'package:ecobiz_mobile_flutter/app/res/colors_data.dart';
import 'package:ecobiz_mobile_flutter/app/routes/app_pages.dart';
import 'package:ecobiz_mobile_flutter/data/data_source/shared_pref_secure_storage.dart';
import 'package:ecobiz_mobile_flutter/data/data_source/urls.dart';
import 'package:ecobiz_mobile_flutter/data/model/exception/custom_rest_api_exception.dart';
import 'package:ecobiz_mobile_flutter/data/model/others/login_user_cache.dart';
import 'package:ecobiz_mobile_flutter/data/model/request/after_register_request.dart';
import 'package:ecobiz_mobile_flutter/data/model/response/get_token_response.dart';
import 'package:ecobiz_mobile_flutter/services/utils/formatter.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:get/get.dart';

import 'package:http/http.dart' as http;

import 'model_get_me.dart';

class AfterRegister1Controller extends GetxController {
  Map<String, dynamic>? user;

  TextEditingController formNip = TextEditingController();
  TextEditingController formNama = TextEditingController();
  TextEditingController formTempatLahir = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController formBirthDate = TextEditingController();

  TextEditingController formBod = TextEditingController();
  String selectCategory = '';
  RxList<DataCategory>? dataCategory = <DataCategory>[].obs;
  // Rx<int> gender = 0.obs;
  Rx<String> gender = 'l'.obs;

  Rx<bool> autoValidate = false.obs;
  Rx<bool> isChecked = false.obs;
  Rx<bool> showLoading = false.obs;
  Rx<bool> isHidden = true.obs;
  final count = 0.obs;

  // get profession => null;
  @override
  void onInit() {
    super.onInit();
    getCategorUsers();
// print('inichh ${dataCategory?.value}' );
    user = Get.arguments;
    print('tipedata ${user.runtimeType}');
    print('getargumntnihhh ${user?['user_id']}');
    // print('dataResponsLogin22 ${dataResponseLogin?.tokens?.user_id}');
  }

  @override
  void onReady() {
    super.onReady();
  }

  void onClose() {
    clearDispose();
  }

  void clearDispose() {
    formNip.dispose();
    formNama.dispose();
    formTempatLahir.dispose();
  }

  void onChangedGender(String genderOption) {
    print("change gender $genderOption");
    gender.value = genderOption;
    update();
  }

  Future<void> getCategorUsers() async {
    var category = await RemoteSevice.getCategoryUsers();
    print("category user ${category?.data[0].categoryName}");
    if (category != null) {
      print("category data length : ${category.data.length}");
      try {
        dataCategory?.addAll(category.data);
      } catch (e) {
        print("error add $e");
      }
      print("category data length2 : ${dataCategory?.length}");
      print("get data cat ${dataCategory?[0].categoryName}");
      // print('GET Details of ${detailsBanner.value.data!.title}');
    }
    // ignore: invalid_use_of_protected_member
    update();
  }

  void onTapBirthDate(BuildContext context) async {
    FocusScope.of(context).unfocus();
    DatePicker.showDatePicker(
      context,
      showTitleActions: true,
      minTime: DateTime(1900, 1, 1),
      maxTime: DateTime(2050, 1, 1),
      onConfirm: (date) {
        String dateConvert = Formatter.getInstance.convertDateTimeFormatter(
          dateTime: date,
          toFormat: Formatter.formatterDateTime2,
        );
        formBirthDate.text = dateConvert;
        print("form date value  $date//$dateConvert//${formBirthDate.text}");
        FocusScope.of(context).unfocus();
        update();
      },
      currentTime: DateTime.now(),
      locale: LocaleType.id,
      theme: DatePickerTheme(
          doneStyle: TextStyle(color: ColorsCustom.primaryColor.orange)),
    );
  }

  static Future<GetMe?> getMe(String token) async {
    print('HTTP GET TOKEN $token');
    var response = await http.get(
      Uri.parse('${BaseUrl.baseUrl}${Urls.getMeUrls}'),
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json',
        HttpHeaders.authorizationHeader: token
      },
    );
    var responsGetMe = getMeFromJson(response.body);

    if (response.statusCode >= 200) {
      if (responsGetMe.name == 'success') {
        return responsGetMe;
      } else {
        return responsGetMe;
      }
      // print('RESPONSE PROFILE ${profileFromJson(jsonString)}');
      // profileController.profileUser = profileFromJson(jsonString);
    }
  }

  Future<AfterRegister?> putProfile({required AfterRegisterRequest}) async {
    _setHeaders() => {
          HttpHeaders.contentTypeHeader: 'application/json',
          // HttpHeaders.authorizationHeader: token,
        };

    print(
        '${BaseUrl.baseUrl}${Urls.updateProfile((user!['user_id']).toString())}');
    print("json encode ${AfterRegisterRequest.toJson()}");
    var response = await http.put(
        Uri.parse(
            '${BaseUrl.baseUrl}${Urls.updateProfile((user!['user_id']).toString())}'),
        // body: jsonEncode(afterRegisterRequestToJson),
        body: jsonEncode(AfterRegisterRequest),
        headers: _setHeaders());

    var responsePutProfile = afterRegisterFromJson(response.body);

    if (response.statusCode == 201) {
      if (responsePutProfile.name == 'success') {
        print('PUT PROFILE SUCCESS ${responsePutProfile.name}');

        // profileController.getProfile(token);

        Get.toNamed(Routes.AFTER_REGISTER_2, arguments: {
          'user_id': user!['user_id'],
          'user_email': user!['user_email'],
          'user_password': user!['user_password'],
          'id_ktp': formNip.text,
          'user_name':formNama.text,
          'gender': gender.value,
          'place_birth': formTempatLahir.text,
          'birth_of_date': formBirthDate.text,
          'user_category': selectCategory


        });

        return responsePutProfile;
      } else {
        // print('error Login datanya cuy');
        return null;
      }
    } else {
      print("status code ${response.body}");
      // print('INI DATA RESPONSE ERROR ${responseLog.error['message']}');
      Get.snackbar('Update Status', ' ERROR',
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  void processToLogin(
      {String user_email = '',
      String user_password = '',
      bool isChecked = false,
      BuildContext? ctx}) async {
    autoValidate.value = true;

    // if (formKey.currentState?.validate()) {
    showLoading.value = true;

    try {
      GetTokenResponse dataResponse = await Connection.getInstance
          .fetchTokenResponse(user_email, user_password);
      print(dataResponse.name);
      print(dataResponse.tokens);
      if (dataResponse.name == 'success' && dataResponse.tokens != null) {
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
        print(dataResponse.tokens!.accessToken);
        SharedPrefSecureStorage.getInstance()!
            .saveToken(dataResponse.tokens?.accessToken ?? '');
        showLoading.value = false;

        gointToHome(dataResponse.tokens?.accessToken ?? '');
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

  @override

  // void goToRegister() {
  //   Get.offAllNamed(Routes.REGISTER);
  // }

  void goToRegister2() {
    Get.toNamed(Routes.AFTER_REGISTER_2);
  }

  void gointToHome(String token) {
    SharedPrefSecureStorage.getInstance()!.setPrefOnBoarding(3);
    Get.offAllNamed(Routes.BASE_MENU, arguments: token);
  }

  void goToLogin() {
    Get.offAllNamed(Routes.LOGIN);
  }

  void increment() => count.value++;
}
