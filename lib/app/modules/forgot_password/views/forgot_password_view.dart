import 'package:ecobiz_mobile_flutter/app/common_widget/button_custom/button_custom.dart';
import 'package:ecobiz_mobile_flutter/app/common_widget/rendering_ui_service/cache_network_image_custom.dart';
import 'package:ecobiz_mobile_flutter/app/common_widget/text_form_custom/text_form_style_forgot_password.dart';
import 'package:ecobiz_mobile_flutter/app/res/colors_data.dart';
import 'package:ecobiz_mobile_flutter/app/res/path_image_icon.dart';
import 'package:ecobiz_mobile_flutter/app/res/styles.dart';
import 'package:ecobiz_mobile_flutter/const/enum.dart';
import 'package:ecobiz_mobile_flutter/const/sized_border_radius.dart';
import 'package:ecobiz_mobile_flutter/const/sized_font_weight.dart';
import 'package:ecobiz_mobile_flutter/const/sized_margin_padding.dart';
import 'package:ecobiz_mobile_flutter/const/sized_space.dart';
import 'package:ecobiz_mobile_flutter/middleware/extension/string_extension.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/forgot_password_controller.dart';

class ForgotPasswordView extends GetView<ForgotPasswordController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // color: ColorsCustom.othersColor.whiteGrey10,

        width: double.infinity,
        height: double.infinity,
        color: ColorsCustom.textWhite,
        child: SingleChildScrollView(
          // padding: const EdgeInsets.symmetric(
          //     horizontal: SizedMarginPadding.sizedMarginPaddingLayoutWidth),
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
                        'Atur Ulang Kata Sandi',
                        style: TextStyleHeading.textH5Small.copyWith(
                          fontWeight: SizedFontWeight.textBold,
                        ),
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
                        'Kode verifikasi akan dikirimkan melalui email kamu',
                        style: TextStyleCustom.textDefault.copyWith(
                            color: ColorsCustom.othersColor.darkgrey60),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: SizedSpace.sizedLarge),
                Divider(
                  thickness: 1,
                ),
                const SizedBox(height: SizedSpace.sized_40),
                Row(
                  children: [
                    // CacheNetworkImageCustom(idImage: idImage, typeImage: typeImage),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                      ),
                      
                    ),
                    // SizedBox(
                    //   width: SizedSpace.sizedNormalMedium,
                    // ),
                    Column(
                        children: [
                          Container(
                            width: 150,
                            height: 124,
                            child: CacheNetworkImageCustom(
                               idImage: PathImage.forgotPasswordImage, typeImage: TypeImage.Assets,
                            ),
                          ),
                          SizedBox(
                            height: SizedSpace.sizedLightBig,
                          ),
                          Column(
                            children: [
                              Text(
                                'Reset Kata Sandi'.tr,
                                style: TextStyleHeading.textH5Small.copyWith(
                                  fontWeight: SizedFontWeight.boldHeavy,
                                  color: ColorsCustom.textcolorDark,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: SizedSpace.sizedMedium,),
                               Text(
                            'Masukkan email yang terdaftar. Kami akan \n mengirimkan kata sandi melalui email.',
                            style: TextStyleParagraph.textParagraphDefault.copyWith(
                              fontWeight: SizedFontWeight.textLight,
                              color: ColorsCustom.othersColor.darkGrey20,
                                
                            ),
                            // overflow: TextOverflow.ellipsis,
                            //                     maxLines: 2,
                            
                            textAlign: TextAlign.center,
                          ),
                            // Text(
                            // ' Kami akan mengirimkan kata sandi melalui email.',
                            // style: TextStyleHeading.textH5Small.copyWith(
                            //   fontWeight: SizedFontWeight.boldHeavy,
                            //   color: ColorsCustom.textcolorDark,
                            // ),
                            // )
                            ],
                          ),
                         
                          SizedBox(
                            height: SizedSpace.sizedLarge,
                          ),
                        ],
                      ),
                    ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                  ),
                  child: TextFormStyleForgotPassword(
                    hintText: 'Masukan Email',
                    title: 'Masukkan Email',
                    titleStyle: TextStyleCustom.textDefault.copyWith(
                      fontWeight: SizedFontWeight.textLight,
                      fontSize: SizedSpace.sizedExtraMedium,
                      color: ColorsCustom.othersColor.darkgrey70,
                    ),
                    // textInputType: TextInputType.emailAddress,
                    // iconPrefix: Icons.email,
                    formController: controller.formEmail,
                    // formController: controller.formEmail.text,
                    validatorForm: (text) {
                      if (text!.isFormEmpty)
                        return "Email Tidak Boleh Kosong";
                      else if (!text.isValidEmail) return "Email Harus Benar";
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: SizedSpace.sized_34),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                  ),
                  child: Obx(() => ButtonCustom(
                        onTap: () => {
                          controller.processToForgotPassword(
                              user_email: controller.formEmail.text)
                        },
                        // controller.verifyOTPOnChange(context,
                        //     phone: controller.formPhone.text),
                        title: 'Kirim',
                        showLoading: controller.showLoading.value,

                        borderRadius: SizedBorderRadius.borderRadiusSmall,
                        colorBackground: ColorsCustom.primaryColor.green,
                      )),
                ),
                const SizedBox(height: SizedSpace.sized_70),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
