import 'package:ecobiz_mobile_flutter/app/routes/app_pages.dart';
import 'package:ecobiz_mobile_flutter/const/enum.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OtpController extends GetxController   {
  TextEditingController formOtp1 = TextEditingController();
  TextEditingController formOtp2 = TextEditingController();
  TextEditingController formOtp3 = TextEditingController();
  TextEditingController formOtp4 = TextEditingController();
  TextEditingController formOtp5 = TextEditingController();
  TextEditingController formOtp6 = TextEditingController();

  // SubGetRequestResetPasswordResponse dataResetPassword =
  //     SubGetRequestResetPasswordResponse(phone: '', contributorId: '');

  OTPPage otpPage = OTPPage.Login;

  Rx<bool> showLoading = false.obs;
  Rx<bool> isActiveButton = false.obs;
  Rx<bool> wrongOtp = false.obs;

  // ignore: unused_field
  late BuildContext _context;

  set initializeContext(context) => _context = context;

  backToRegisterOnChange() {
    Get.back();
  }

  @override
  // ignore: must_call_super
  void onInit() {
    // otpPage = Get.arguments['otpPage'];
    // if (otpPage == OTPPage.Forgot) {
    //   dataResetPassword =
    //       SubGetRequestResetPasswordResponse.fromJson(Get.arguments['data']);
    // } else if (otpPage == OTPPage.Register) {
    //   dataResetPassword =
    //       SubGetRequestResetPasswordResponse.fromJson(Get.arguments['data']);
    // } else if (otpPage == OTPPage.Update_Profil) {
    //   dataResetPassword = Get.arguments['data'];
    // } else if (otpPage == OTPPage.Login) {
    //   dataResetPassword =
    //       SubGetRequestResetPasswordResponse.fromJson(Get.arguments['data']);
    // }
    // listenForCode();
    // super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    formOtp1.dispose();
    formOtp2.dispose();
    formOtp3.dispose();
    formOtp4.dispose();
    formOtp5.dispose();
    formOtp6.dispose();
  }

    backToLoginOnChange() => Get.back();


  void formOtpClear() {
    formOtp1.clear();
    formOtp2.clear();
    formOtp3.clear();
    formOtp4.clear();
    formOtp5.clear();
    formOtp6.clear();
  }

  void onTapForm() {
    wrongOtp.value = false;
  }

  void onChangeForm() {
    if (formOtp1.text.isNotEmpty &&
        formOtp2.text.isNotEmpty &&
        formOtp3.text.isNotEmpty &&
        formOtp4.text.isNotEmpty &&
        formOtp5.text.isNotEmpty &&
        formOtp6.text.isNotEmpty) {
      isActiveButton.value = true;
    } else {
      isActiveButton.value = false;
    }
  }

  void reSendOtp(BuildContext context) async {
    // try {
    //   unregisterListener();
    //   VerifyOtpResponse result = await Connection.getInstance.sendVerifyOtp(
    //     SendOtpRequest(
    //       phone: dataResetPassword.phone,
    //       appHash: await ReceiveSms.getAppSignature ?? "",
    //     ),
    //   );
    //   if (result.success) {
    //     listenForCode();
    //     AlertMessage.successMessage(context,
    //         message: "Success Resend OTP Code", onClose: false);
    //   } else {
    //     AlertMessage.errorMessage(context,
    //         message: result.error!.message ?? 'Internal Server Error',
    //         onClose: false);
    //   }
    // } on CustomRestApiException catch (e) {
    //   AlertMessage.errorMessage(context, message: e.message, onClose: false);
    // }
    formOtpClear();
  }

  void processToVerifyOtp(
      {String otp = '', required BuildContext context}) async {
    if (otpPage == OTPPage.Forgot) {
      verifyOtpForgot(otp, context);
    } else if (otpPage == OTPPage.Register) {
      verifyOtpRegister(otp, context);
    } else if (otpPage == OTPPage.Update_Profil) {
      verifyOtpForgot(otp, context);
    } else if (otpPage == OTPPage.Login) {
      verifyOtpRegister(otp, context);
    }
  }

  void verifyOtpForgot(String otp, BuildContext context) async {
    showLoading.value = true;
    // try {
    //   VerifyOtpResetPasswordResponse result =
    //       await Connection.getInstance.callVerifyOtpResetPassword(
    //     SubGetVerifyOtpResetPasswordResponse(
    //       code: otp,
    //       contributorId: dataResetPassword.contributorId,
    //       phone: dataResetPassword.phone,
    //       token: dataToken,
    //     ),
    //   );
    //   if (result.success) {
    //     showLoading.value = false;
    //     Get.back(result: result.data);
    //   } else {
    //     showLoading.value = false;
    //     formOtpClear();
    //     wrongOtp.value = true;
    //     isActiveButton.value = false;
    //     if (result.error != null)
    //       AlertMessage.errorMessage(context,
    //           message: result.error!.message ?? 'Internal Server Error',
    //           onClose: false);
    //   }
    // } on CustomRestApiException catch (e) {
    //   showLoading.value = false;
    //   formOtpClear();
    //   wrongOtp.value = true;
    //   isActiveButton.value = false;
    //   AlertMessage.errorMessage(context, message: e.message, onClose: false);
    // }
  }

  void verifyOtpRegister(String otp, BuildContext context) async {
    showLoading.value = true;
    // try {
    //   VerifyOtpResponse result = await Connection.getInstance.callVerifyOtp(
    //     VerifyOtpRequest(
    //       code: otp,
    //       contributorId: dataResetPassword.contributorId,
    //     ),
    //   );
    //   if (result.success) {
    //     showLoading.value = false;
    //     Get.back(result: result.data);
    //   } else {
    //     showLoading.value = false;
    //     formOtpClear();
    //     wrongOtp.value = true;
    //     isActiveButton.value = false;
    //     if (result.error != null)
    //       AlertMessage.errorMessage(context,
    //           message: result.error!.message ?? 'Internal Server Error',
    //           onClose: false);
    //   }
    // } on CustomRestApiException catch (e) {
    //   showLoading.value = false;
    //   formOtpClear();
    //   wrongOtp.value = true;
    //   isActiveButton.value = false;
    //   AlertMessage.errorMessage(context, message: e.message, onClose: false);
    // }
  }

  void codeUpdated() {
  //   if (code != null) {
  //     if (code!.isNotEmpty) {
  //       Characters value = code!.characters;
  //       formOtp1.text = value.elementAt(0);
  //       formOtp2.text = value.elementAt(1);
  //       formOtp3.text = value.elementAt(2);
  //       formOtp4.text = value.elementAt(3);
  //       formOtp5.text = value.elementAt(4);
  //       formOtp6.text = value.elementAt(5);
  //       processToVerifyOtp(
  //         otp:
  //             '${formOtp1.text}${formOtp2.text}${formOtp3.text}${formOtp4.text}${formOtp5.text}${formOtp6.text}',
  //         context: _context,
  //       );
  //     }
  //   }
  // }
  }
  void goToNewPassword() {
    Get.toNamed(Routes.NEW_PASSWORD);
  } 
}

