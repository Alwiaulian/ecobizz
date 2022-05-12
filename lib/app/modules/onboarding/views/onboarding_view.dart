import 'package:ecobiz_mobile_flutter/app/common_widget/button_custom/button_custom.dart';
import 'package:ecobiz_mobile_flutter/app/common_widget/card_custom/card_onboarding.dart';
import 'package:ecobiz_mobile_flutter/app/common_widget/dot_indicator_custom/dot_indiator_model_1.dart';
import 'package:ecobiz_mobile_flutter/app/mixin_function_helper/decision_size.dart';
import 'package:ecobiz_mobile_flutter/app/res/colors_data.dart';
import 'package:ecobiz_mobile_flutter/app/res/styles.dart';
import 'package:ecobiz_mobile_flutter/const/sized_border_radius.dart';
import 'package:ecobiz_mobile_flutter/const/sized_font_weight.dart';
import 'package:ecobiz_mobile_flutter/const/sized_margin_padding.dart';
import 'package:ecobiz_mobile_flutter/const/sized_space.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> with DecisionSize {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          
          // color: ColorsCustom.textWhite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: PageView(
                  controller: controller.pageController,
                  onPageChanged: controller.currentPage,
                  children: [
                    CardOnboardingStyle(
                      pathImage: controller.pathImage[0],
                      // title: '',
                      // subTitle: ''
                      subTitle:
                          "Platform online untuk menghubungkan berbagai pelaku (stakeholder) untuk bersama-sama membangun ekosistem bisnis lokal".tr,
                      title:
                          "Tumbuh dan Berkembang Bersama kami".tr,
                    ),
                    CardOnboardingStyle(
                      pathImage: controller.pathImage[1],
                      // title: '',
                      // subTitle: ''
                      subTitle:
                          "Temukan Solusi Bisnis Anda dari Ribuan Pelaku Bisnis di Indonesia untuk bersama-sama membangun ekosistem bisnis lokal".tr,
                      title: "Menghubungkan berbagai Pelaku bidang Bisnis".tr,
                    ),

                    CardOnboardingStyle(
                      pathImage: controller.pathImage[2],
                      // title: '',
                      // subTitle: '',
                      
                      subTitle:
                          "Menjadi platform yang menunjang produktifitas bagi para petani dalam mengembangkan usahanya".tr,
                      title: "Dapatkan Target PasarYang Diinginkan".tr,
                    ),
                    // SizedBox(height: 24,)
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: SizedMarginPadding.sizedMarginPaddingLayoutWidth,
                ),
                child: Column(
                  children: [
                    Obx(
                      () => DotIndicatorModel1(
                        currentPage: controller.currentPage.value,
                        dataLength: controller.pathImage.length,
                      ),
                    ),
                    ButtonCustom(
                      // onTap: () => controller.goToRegister1(),
                      onTap: () => controller.goToRegister(),

                      title: 'Daftar',
                      borderRadius: SizedBorderRadius.borderRadiusSmall,
                      colorBackground: ColorsCustom.primaryColor.green,
                    ),
                    SizedBox(
                      height: SizedSpace.sizedLarge,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Sudah Punya Akun ? ",
                          style: TextStyleHeading.textH7XXSmall.copyWith(
                            fontWeight: SizedFontWeight.textBold,
                            color: ColorsCustom.textcolorDark,
                          ),
                        ),
                        GestureDetector(
                          onTap: () => controller.goToLogin(),
                          child: Text(
                            "Masuk di sini",
                            style: TextStyleHeading.textH7XXSmall.copyWith(
                              fontWeight: SizedFontWeight.textBold,
                              color: ColorsCustom.primaryColor.orange,
                              // decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: SizedSpace.sizedExtraBig)
            ],
          ),
        ),
      ),
    );
  }
}
