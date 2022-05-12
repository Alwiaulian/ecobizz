import 'package:ecobiz_mobile_flutter/app/common_widget/button_custom/button_custom.dart';
import 'package:ecobiz_mobile_flutter/app/common_widget/text_form_custom/text_form_style_title_custom.dart';
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

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> with DecisionSize {
  final String? username;

  final bool? isObscure;
  RegisterView({this.username, this.isObscure});

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
                      'Daftarkan Diri Kamu',
                      style: TextStyleHeading.textH5Small.copyWith(
                        fontWeight: SizedFontWeight.textBold,
                      ),
                    ),
                    SizedBox(
                      height: SizedSpace.sizedSmall,
                    ),
                    Text(
                      'Silahkan lengkapi persyaratan sebagai berikut',
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
              Column(
                children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 24, vertical: 16),
                child: Column(
                  children: [
                    Form(
                       autovalidateMode: (controller.autoValidate.value)
                        ? AutovalidateMode.onUserInteraction
                        : AutovalidateMode.disabled,
                    key: controller.formKey,
                        child: Column(
                      children: [
                        TextFormStyleTitleCustom(
                          hintText: 'Masukan email',
                          title: 'Email',
                          titleStyle:
                              TextStyleCustom.textDefault.copyWith(
                            fontWeight: SizedFontWeight.textLight,fontSize: SizedSpace.sizedExtraMedium,
                            color: ColorsCustom.othersColor.darkgrey70,
                          ),
                          // textInputType: TextInputType.emailAddress,
                          // iconPrefix: Icons.email,
                          formController: controller.formEmail,
                          // formController: controller.formEmail.text,
                          validatorForm: (text) {
                            if (text!.isFormEmpty)
                              return "Email Tidak Boleh Kosong";
                            else if (!text.isValidEmail)
                              return "Email Harus Benar";
                            return null;
                          },
                        ),
                        Obx(
                          () => TextFormStyleTitlePassword(
                            title: 'Kata Sandi',
                            styleTitle:
                                TextStyleCustom.textDefault.copyWith(
                            fontWeight: SizedFontWeight.textLight,fontSize: SizedSpace.sizedExtraMedium,
                            color: ColorsCustom.othersColor.darkgrey70,
                          ),
                            hintText: 'Masukan kata sandi',
                            formController: controller.formPassword,
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
                              padding: EdgeInsets.only(left: SizedMarginPadding.sized_24),
                              onPressed: controller.setHiddenTextValue,
                              icon: controller.isHidden.value
                                  ? const Icon(
                                    
                                      Icons.visibility_off,
                                      color: ColorsCustom.textGrey,
                                      size: 18,
                                    )
                                  : const Icon(
                                      Icons.visibility,
                                      size: 18,
                                      color: ColorsCustom.colorGreen,
                                    ),
                            ),
                          ),
                        ),
                        TextFormStyleTitleCustom(
                          hintText: '+62**** ',
                          title: 'Nomor Telpon Seluler',
                          titleStyle:
                              TextStyleCustom.textDefault.copyWith(
                            fontWeight: SizedFontWeight.textLight,fontSize: SizedSpace.sizedExtraMedium,
                            color: ColorsCustom.othersColor.darkgrey70,
                          ),
                          // textInputType: TextInputType.emailAddress,
                          // iconPrefix: Icons.email,
                          formController: controller.formPhone,
                          validatorForm: (value) {
                            if (value!.isFormEmpty)
                              return "Nomor Telephone Tidak Boleh Kosong";
                            
                            return null;
                          },
                        ),
                        const SizedBox(height: SizedSpace.sizedExtraMedium),
                        const SizedBox(height: SizedSpace.sizedVeryLarge),
                        ButtonCustom(
                          onTap: () => {
                                  controller.processToRegister(
                                    user_email:
                                        controller.formEmail.value.text,
                                    user_password:
                                        controller.formPassword.value.text,
                                    user_mobile_number:
                                        int.parse(controller.formPhone.text),
                                    isChecked: controller.isChecked.value,
                                    ctx: context,
                                  ),
                                },
                          title: 'Lanjutkan',
                          borderRadius: SizedBorderRadius.borderRadiusSmall,
                          colorBackground: ColorsCustom.primaryColor.green,
                        ),
                        SizedBox(
                          height: SizedSpace.sized_30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Sudah Punya Akun ? ",
                              style:
                                  TextStyleHeading.textH7XXSmall.copyWith(
                                fontWeight: SizedFontWeight.textLight,
                                color: ColorsCustom.othersColor.darkGrey20,
                              ),
                            ),
                            SizedBox(
                              height: SizedSpace.sized_32,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 3),
                              child: GestureDetector(
                                onTap: () => controller.goToLogin(),
                                child: Text(
                                  "Login ",
                                  style:
                                      TextStyleCustom.textDefault.copyWith(
                                    fontWeight: SizedFontWeight.textBold,
                                    color: ColorsCustom.primaryColor.orange,
                                    // decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ))
                  ],
                ),
              ),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }

  void setState(Null Function() param0) {}
}
