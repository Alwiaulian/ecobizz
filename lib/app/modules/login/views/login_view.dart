// ignore_for_file: must_be_immutable

import 'package:ecobiz_mobile_flutter/app/common_widget/button_custom/button_custom.dart';
import 'package:ecobiz_mobile_flutter/app/common_widget/checkbox_custom/checkBoxTitleCustom.dart';
import 'package:ecobiz_mobile_flutter/app/common_widget/text_form_custom/text_form_style_title_custom.dart';
import 'package:ecobiz_mobile_flutter/app/common_widget/text_form_custom/text_form_style_title_password.dart';
import 'package:ecobiz_mobile_flutter/app/mixin_function_helper/decision_size.dart';
import 'package:ecobiz_mobile_flutter/app/res/styles.dart';
import 'package:ecobiz_mobile_flutter/app/routes/app_pages.dart';
import 'package:ecobiz_mobile_flutter/const/sized_border_radius.dart';
import 'package:ecobiz_mobile_flutter/const/sized_font_weight.dart';
import 'package:ecobiz_mobile_flutter/const/sized_space.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'package:ecobiz_mobile_flutter/app/res/colors_data.dart';

import 'package:ecobiz_mobile_flutter/middleware/extension/string_extension.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> with DecisionSize {
  String? username = null;

  bool? isObscure = null;
  LoginView({this.username, this.isObscure});

  get password => null;
  @override
  Widget build(BuildContext context) {
      // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      //       statusBarColor: ColorsCustom.darkTurqoise,
      //       statusBarBrightness: Brightness.dark,
      //       statusBarIconBrightness: Brightness.dark,
      //     ));

    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      color: ColorsCustom.textWhite,
      child: SingleChildScrollView(
        child: Container(
          color: ColorsCustom.textWhite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: SizedSpace.sized_70,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Masuk Ke Akun',
                      style: TextStyleHeading.textH5Small.copyWith(
                        fontWeight: SizedFontWeight.textBold,
                      ),
                    ),
                    SizedBox(
                      height: SizedSpace.sizedSmall,
                    ),
                    Text(
                      'Silahkan masuk ke akun yang telah terdaftar',
                      style: TextStyleCustom.textDefault
                          .copyWith(color: ColorsCustom.othersColor.darkgrey60),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: SizedSpace.sizedLarge,
              ),
              Divider(
                height: 8,
                color: ColorsCustom.darkGrey30,
              ),
              Obx(
                () => Form(
                    autovalidateMode: (controller.autoValidate.value)
                        ? AutovalidateMode.onUserInteraction
                        : AutovalidateMode.disabled,
                    key: controller.formKey,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 24, vertical: 16),
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  TextFormStyleTitleCustom(
                                    hintText: 'Masukan email',
                                    title: 'Email',
                                    titleStyle:
                                        TextStyleCustom.textDefault.copyWith(
                                      fontWeight: SizedFontWeight.textLight,
                                      fontSize: SizedSpace.sizedExtraMedium,
                                      color:
                                          ColorsCustom.othersColor.darkgrey70,
                                    ),
                                    textInputType: TextInputType.emailAddress,
                                    // iconPrefix: Icons.email,
                                    formController: controller.formEmail.value,
                                    validatorForm: (value) {
                                      if (value!.isFormEmpty)
                                        return "Email Tidak Boleh Kosong";
                                      else if (!value.isValidEmail)
                                        return "Email Harus Benar";
                                      return null;
                                    },
                                  ),
                                  TextFormStyleTitlePassword(
                                    title: 'Kata Sandi',
                                    styleTitle:
                                        TextStyleCustom.textDefault.copyWith(
                                      fontWeight: SizedFontWeight.textLight,
                                      fontSize: SizedSpace.sizedExtraMedium,
                                      color:
                                          ColorsCustom.othersColor.darkgrey70,
                                    ),
                                    hintText: 'Masukan kata sandi',
                                    formController:
                                        controller.formPassword.value,
                                    // iconPrefix: Icons.lock,
                                    obsecureText: controller.isHidden.value,
                                    validatorForm: (value) {
                                      if (value!.isFormEmpty)
                                        return "Password Tidak Boleh Kosong";
                                      if (!value.isValidPassword)
                                        return "Minimal Password 8";
                                      return null;
                                    },
                                    suffixIcon: IconButton(
                                      padding: EdgeInsets.only(
                                          left: SizedSpace.sizedNormalLarge),
                                      onPressed: controller.setHiddenTextValue,
                                      icon: controller.isHidden.value
                                          ? const Icon(
                                              Icons.visibility_off,
                                              color: ColorsCustom.textGrey,
                                              size: 18,
                                            )
                                          : const Icon(
                                              Icons.visibility,
                                              color: ColorsCustom.colorGreen,
                                              size: 18,
                                            ),
                                    ),
                                  ),
                                  const SizedBox(
                                      height: SizedSpace.sizedExtraMedium),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Transform.translate(
                                          offset: const Offset(-24, 0),
                                          child: Obx(
                                            () => CheckboxTitleCustom(
                                              //tess
                                              text: "Ingat Saya",
                                              textStyle: TextStyleCustom
                                                  .textSmall
                                                  .copyWith(
                                                color: ColorsCustom
                                                    .othersColor.darkgrey80,
                                              ),
                                              isChecked:
                                                  controller.isChecked.value,
                                              onChange: (bool value) =>
                                                  controller
                                                      .checkedBehaviourCheckbox(
                                                          value),
                                            ),
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () =>
                                            controller.ForgotPasswordOnChange(),
                                        child: Text(
                                          'Lupa Kata Sandi ?',
                                          style: TextStyleHeading.textH7XXSmall
                                              .copyWith(
                                            fontWeight:
                                                SizedFontWeight.textBold,
                                            color: ColorsCustom
                                                .othersColor.darkgrey70,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                      height: SizedSpace.sizedVeryLarge),
                                  ButtonCustom(
                                    onTap: () => {
                                      Get.toNamed(Routes.BASE_MENU)
                                      // controller.processToLogin(
                                      //   user_email:
                                      //       controller.formEmail.value.text,
                                      //   user_password:
                                      //       controller.formPassword.value.text,
                                      //   isChecked: controller.isChecked.value,
                                      //   ctx: context,
                                      // ),
                                    },
                                    title: 'Login',
                                    borderRadius:
                                        SizedBorderRadius.borderRadiusSmall,
                                    colorBackground:
                                        ColorsCustom.primaryColor.green,
                                  ),
                                  SizedBox(height: SizedSpace.sized_32),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Belum Punya Akun ? ",
                                        style: TextStyleHeading.textH7XXSmall
                                            .copyWith(
                                          fontWeight: SizedFontWeight.textLight,
                                          color: ColorsCustom
                                              .othersColor.darkGrey20,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 2),
                                        child: GestureDetector(
                                          onTap: () =>
                                              controller.goToRegister(),
                                          child: Text(
                                            "Daftar",
                                            style: TextStyleHeading
                                                .textH7XXSmall
                                                .copyWith(
                                              fontWeight:
                                                  SizedFontWeight.textBold,
                                              color: ColorsCustom
                                                  .primaryColor.orange,
                                              // decoration: TextDecoration.underline,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    ));
  }

  // void setState(Null Function() param0) {}
}
