import 'package:ecobiz_mobile_flutter/app/common_widget/button_custom/button_custom.dart';
import 'package:ecobiz_mobile_flutter/app/common_widget/rendering_ui_service/cache_network_image_custom.dart';
import 'package:ecobiz_mobile_flutter/app/mixin_function_helper/decision_size.dart';
import 'package:ecobiz_mobile_flutter/app/res/colors_data.dart';
import 'package:ecobiz_mobile_flutter/app/res/path_image_icon.dart';
import 'package:ecobiz_mobile_flutter/app/res/styles.dart';
import 'package:ecobiz_mobile_flutter/const/enum.dart';
import 'package:ecobiz_mobile_flutter/const/sized_border_radius.dart';
import 'package:ecobiz_mobile_flutter/const/sized_font_weight.dart';
import 'package:ecobiz_mobile_flutter/const/sized_margin_padding.dart';
import 'package:ecobiz_mobile_flutter/const/sized_space.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/success_new_password_controller.dart';

class SuccessNewPasswordView extends GetView<SuccessNewPasswordController>
    with DecisionSize {
  final String? username;

  final bool? isObscure;
  SuccessNewPasswordView({this.username, this.isObscure});

  get password => null;
  @override
  Widget build(BuildContext context) {
    //      SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    //     statusBarColor: ColorsCustom.textWhite,
    //     statusBarBrightness: Brightness.dark,
    //     statusBarIconBrightness: Brightness.dark,
    //   ));

    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      color: ColorsCustom.textWhite,
      child: Container(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: SizedSpace.sized_200,
                    ),

                    Container(
                      padding: EdgeInsets.all(
                          SizedMarginPadding.sizedMarginPaddingLayoutWidth),
                      child: Column(
                        children: [
                          Container(
                            width: 150,
                            height: 124,
                            child: CacheNetworkImageCustom(
                               idImage: PathImage.successNewPassword, typeImage: TypeImage.Assets,
                            ),
                          ),
                          SizedBox(
                            height: SizedSpace.sizedLightBig,
                          ),
                          Text(
                            'Kata Sandi Kamu Berhasil Dirubah'.tr,
                            style: TextStyleHeading.textH5Small.copyWith(
                              fontWeight: SizedFontWeight.boldHeavy,
                              color: ColorsCustom.textcolorDark,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: SizedSpace.sizedLarge,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              decoration:
                  BoxDecoration(color: ColorsCustom.textWhite, boxShadow: [
                BoxShadow(
                  color: ColorsCustom.textWhite.withOpacity(0.5),
                  // spreadRadius: -10,
                  blurRadius: 0.0,
                  offset: Offset(
                    -0,
                    -4,
                  ),
                ),
                BoxShadow(
                  color: ColorsCustom.othersColor.whiteGrey10.withOpacity(0.5),
                  // spreadRadius: -10,
                  blurRadius: 3.0,
                  offset: Offset(
                    -0,
                    -4,
                  ),
                ),
              ]),
              padding: EdgeInsets.symmetric(
                  horizontal: SizedMarginPadding.sizedMarginPaddingLayoutWidth,
                  vertical: SizedMarginPadding.sizedMarginPaddingLayoutWidth),
              margin: EdgeInsets.symmetric(
                vertical: SizedMarginPadding.sized_24,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: SizedMarginPadding.sized_10),
                child: GestureDetector(
                  child: ButtonCustom(
                    onTap: () => {
                      controller.goToLogin()
                    },
                    title: 'Kembali Login',
                    borderRadius: SizedBorderRadius.borderRadiusSmall,
                    colorBackground: ColorsCustom.primaryColor.green,
                  ),
                ),
              ),
            ),
            // SizedBox(
            //   height: SizedSpace.sized_30,
            // ),
          ],
        ),
      ),
    ));
  }
}
