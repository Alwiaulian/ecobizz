import 'package:ecobiz_mobile_flutter/app/common_widget/button_custom/button_custom.dart';
import 'package:ecobiz_mobile_flutter/app/common_widget/text_form_custom/text_form_style_title_password.dart';
import 'package:ecobiz_mobile_flutter/app/mixin_function_helper/decision_size.dart';
import 'package:ecobiz_mobile_flutter/app/res/colors_data.dart';
import 'package:ecobiz_mobile_flutter/app/res/styles.dart';
import 'package:ecobiz_mobile_flutter/const/sized_border_radius.dart';
import 'package:ecobiz_mobile_flutter/const/sized_font_weight.dart';
import 'package:ecobiz_mobile_flutter/const/sized_margin_padding.dart';
import 'package:ecobiz_mobile_flutter/const/sized_space.dart';
import 'package:ecobiz_mobile_flutter/middleware/extension/string_extension.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/new_password_controller.dart';

class NewPasswordView extends GetView<NewPasswordController> with DecisionSize {
  final String? username;

  final bool? isObscure;
  NewPasswordView({this.username, this.isObscure});

  get password => null;
  @override
  Widget build(BuildContext context) {
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
              // SizedBox(
              //   height: SizedSpace.sized_70,
              // ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 SizedBox(
                height: SizedSpace.sized_70,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                 child: Row(
                          children: [
                            GestureDetector(
                              onTap: () => controller.backToLoginOnChange(),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: const Icon(Icons.arrow_back,
                                    color: ColorsCustom.colorGreen),
                              ),
                            ),
                            SizedBox(
                              width: SizedMarginPadding.sized_12,
                            ),
                            Text(
                              'Buat Kata Sandi Baru',
                              style: TextStyleHeading.textH5Small.copyWith(
                                        fontWeight: SizedFontWeight.textBold,),
                            ),
                          ],
                        ),
                      ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 60,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: SizedSpace.sizedSmall,
                    ),
                    Text(
                      'Silahkan buat kata sandi baru',
                      style: TextStyleCustom.textDefault
                          .copyWith(color: ColorsCustom.othersColor.darkgrey60),
                    ),
                  ],
                ),
              ),
             
                ],
              ),
              SizedBox(
                height: SizedSpace.sizedLarge,
              ),
              Divider(
                height: 8,
                color: ColorsCustom.darkGrey30,
              ),
              Form(
                  child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 16),
                    child: Column(
                      children: [
                        Form(
                            child: Column(
                          children: [
                                   Obx(
                              () => TextFormStyleTitlePassword(
                                title: 'Kata Sandi Baru',
                                styleTitle:
                                    TextStyleHeading.textH7XXSmall.copyWith(
                                  fontWeight: SizedFontWeight.textBold,
                                  color: ColorsCustom.textcolorDark,
                                ),
                                hintText: 'Masukan kata sandi baru',
                                formController: controller.formPassword.value,
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
                            ),
                     
                            Obx(
                              () => TextFormStyleTitlePassword(
                                title: 'Ulangi Kata Sandi',
                                styleTitle:
                                    TextStyleHeading.textH7XXSmall.copyWith(
                                  fontWeight: SizedFontWeight.textBold,
                                  color: ColorsCustom.textcolorDark,
                                ),
                                hintText: 'Silakan ulangi kata sandi',
                                formController: controller.formPassword.value,
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
                                  onPressed: controller.setHiddenRepeatTextValue,
                                  icon: controller.isHiddenRepeat.value
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
                            ),
                            const SizedBox(height: SizedSpace.sizedExtraMedium),
                            const SizedBox(height: SizedSpace.sizedVeryLarge),
                            ButtonCustom(
                              onTap: () => 
                              {controller.goToSuccess()},
                              title: 'Verifikasi',
                              borderRadius: SizedBorderRadius.borderRadiusSmall,
                              colorBackground: ColorsCustom.primaryColor.green,
                            ),
                            SizedBox(
                              height: SizedSpace.sized_30,
                            ),
                          
                          ],
                        ))
                      ],
                    ),
                  ),
                ],
              )),
            ],
          ),
        ),
      ),
    ));
  }

  void setState(Null Function() param0) {}
}
