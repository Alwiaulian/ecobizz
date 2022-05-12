import 'package:ecobiz_mobile_flutter/app/common_widget/button_custom/button_custom.dart';
import 'package:ecobiz_mobile_flutter/app/common_widget/text_form_custom/text_form_otp.dart';
import 'package:ecobiz_mobile_flutter/app/common_widget/text_view_custom/text_view_custom_ontap.dart';
import 'package:ecobiz_mobile_flutter/app/res/colors_data.dart';
import 'package:ecobiz_mobile_flutter/app/res/styles.dart';
import 'package:ecobiz_mobile_flutter/const/enum.dart';
import 'package:ecobiz_mobile_flutter/const/sized_font.dart';
import 'package:ecobiz_mobile_flutter/const/sized_font_weight.dart';
import 'package:ecobiz_mobile_flutter/const/sized_heading_text.dart';
import 'package:ecobiz_mobile_flutter/const/sized_margin_padding.dart';
import 'package:ecobiz_mobile_flutter/const/sized_space.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/otp_controller.dart';

class OtpView extends GetView<OtpController> {
  @override
  Widget build(BuildContext context) {
    controller.initializeContext = context;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Container(
            // color: ColorsCustom.textWhite,
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
                        'Verifikasi Kode',
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
                        'Kode verifikasi telah terkirim ke email ',
                        style: TextStyleCustom.textDefault.copyWith(
                            color: ColorsCustom.othersColor.darkgrey60),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            right: SizedMarginPadding.sized_110,
                            top: SizedMarginPadding.sized_10),
                        child: Text(
                          'thariq14@gmail.com',
                          style: TextStyleHeading.textH7XXSmall.copyWith(
                              color: ColorsCustom.othersColor.darkgrey80),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: SizedSpace.sizedLarge),
                Divider(
                  thickness: 1,
                ),
                const SizedBox(height: SizedSpace.sizedExtraMedium),
                // Text(
                //   'Nomor Telepon',
                //   style: TextStyleHeading.textH7XXSmall.copyWith(
                //     fontWeight: SizedFontWeight.textBold,
                //     color: ColorsCustom.textcolorDark,
                //   ),
                // ),
                const SizedBox(height: SizedSpace.sizedNormalMedium),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                  ),
                  child: Obx(
                    () => TextFormOtp(
                      form1: controller.formOtp1,
                      form2: controller.formOtp2,
                      form3: controller.formOtp3,
                      form4: controller.formOtp4,
                      form5: controller.formOtp5,
                      form6: controller.formOtp6,
                      onTap: () => controller.onTapForm(),
                      colorBorder: (controller.wrongOtp.value)
                          ? ColorsCustom.othersColor.red30
                          : ColorsCustom.colorGreen,
                      onChangeForm: () => controller.onChangeForm(),
                    ),
                  ),
                ),
                const SizedBox(height: SizedSpace.sized_30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      ' Tidak mendapatkan kode? ',
                      style: TextStyleCustom.textDefault
                          .copyWith(color: ColorsCustom.textcolorDark),
                    ),
                    TextViewCustomOnTap(
                      onTap: () => controller.reSendOtp(context),
                      text: 'Kirim Ulang',
                      fontFamily: FontFamily.Averta,
                      fontSize: SizedFont.textMedium,
                      fontWeight: SizedFontWeight.textBold,
                      colorText: ColorsCustom.primaryColor.orange,
                      heighText: SizedHeightSpacingText.sizedHeightSpacing_22,
                    ),
                  ],
                ),
                const SizedBox(height: SizedSpace.sized_30),

                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                  ),
                  child: Obx(
                    () => ButtonCustom(
                      onTap: () => ({controller.goToNewPassword()}),
                      // (controller.isActiveButton.value)
                      //     ? controller.processToVerifyOtp(
                      //         context: context,
                      //         otp:
                      //             '${controller.formOtp1.text}${controller.formOtp2.text}${controller.formOtp3.text}${controller.formOtp4.text}${controller.formOtp5.text}${controller.formOtp6.text}',
                      //       )
                      //     : {},
                      title: 'Verifikasi',
                      colorTitle: (controller.isActiveButton.value)
                          ? ColorsCustom.textWhite
                          : ColorsCustom.othersColor.darkGrey30,
                      showLoading: controller.showLoading.value,
                      colorBackground: (controller.isActiveButton.value)
                          ? ColorsCustom.colorGreen
                          : ColorsCustom.othersColor.whiteGrey30,
                    ),
                  ),
                ),
                const SizedBox(height: SizedSpace.sized_30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
