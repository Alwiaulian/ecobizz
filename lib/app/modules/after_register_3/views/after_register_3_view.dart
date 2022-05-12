import 'package:ecobiz_mobile_flutter/app/common_widget/button_custom/button_custom.dart';
import 'package:ecobiz_mobile_flutter/app/common_widget/rendering_ui_service/cache_network_image_custom.dart';
import 'package:ecobiz_mobile_flutter/app/common_widget/text_form_custom/text_form_style_title_custom.dart';
import 'package:ecobiz_mobile_flutter/app/common_widget/text_view_custom/text_view_custom_ontap.dart';
import 'package:ecobiz_mobile_flutter/app/mixin_function_helper/decision_size.dart';
import 'package:ecobiz_mobile_flutter/app/res/colors_data.dart';
import 'package:ecobiz_mobile_flutter/app/res/path_image_icon.dart';
import 'package:ecobiz_mobile_flutter/app/res/styles.dart';
import 'package:ecobiz_mobile_flutter/const/enum.dart';
import 'package:ecobiz_mobile_flutter/const/sized_border_radius.dart';
import 'package:ecobiz_mobile_flutter/const/sized_font.dart';
import 'package:ecobiz_mobile_flutter/const/sized_font_weight.dart';
import 'package:ecobiz_mobile_flutter/const/sized_heading_text.dart';
import 'package:ecobiz_mobile_flutter/const/sized_margin_padding.dart';
import 'package:ecobiz_mobile_flutter/const/sized_space.dart';
import 'package:ecobiz_mobile_flutter/middleware/extension/string_extension.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/after_register_3_controller.dart';

class AfterRegister3View extends GetView<AfterRegister3Controller>
    with DecisionSize {
  final String? username;

  final bool? isObscure;
  AfterRegister3View({this.username, this.isObscure});

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
                            'Lengkapi Data Diri Kamu',
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
                            'Silahkan melengkapi profil kamu dahulu',
                            style: TextStyleCustom.textDefault.copyWith(
                                color: ColorsCustom.othersColor.darkgrey60),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: SizedSpace.sizedLarge,
                    ),
                    Row(children: <Widget>[
                      Expanded(
                        child: new Container(
                            margin:
                                const EdgeInsets.only(left: 0.0, right: 0.0),
                            child: Divider(
                              thickness: 2.5,
                              color: ColorsCustom.colorGreen,
                              height: 36,
                            )),
                      ),
                    ]),
                    Form(
                        child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 24, vertical: 16),
                          child: Column(
                            children: [
                              const SizedBox(height: SizedSpace.sizedTinyLarge),
                              Center(
                                child:

                                    // (controller.fileImage.value.path!.isNotEmpty)
                                    //     ? BoxProfileChangeImage(
                                    //         isFromFile:
                                    //             (controller.fileImage.value.path!.isNotEmpty),
                                    //         onTap: () => controller.openImagePicker(context),
                                    //         idImage: controller.fileImage.value.path!)
                                    //     :
                                    GestureDetector(
                                  onTap: () =>
                                      controller.openImagePicker(context),
                                  child: Container(
                                    width: 124,
                                    height: 124,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: ColorsCustom
                                            .othersColor.whiteGrey40),
                                    child: const CacheNetworkImageCustom(
                                        idImage: PathImage.emptyPictureProfile,
                                        typeImage: TypeImage.Assets),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                  height: SizedSpace.sizedSuperMedium),
                              Center(
                                child: TextViewCustomOnTap(
                                  onTap: () =>
                                      controller.openImagePicker(context),
                                  text: 'Pilih Gambar'.tr,
                                  fontFamily: FontFamily.Averta,
                                  colorText: ColorsCustom.primaryColor.orange,
                                  fontSize: SizedFont.headingH7,
                                  heighText: SizedHeightSpacingText
                                      .sizedHeightSpacing_22,
                                  fontWeight: SizedFontWeight.textBold,
                                ),
                              ),
                              const SizedBox(height: SizedSpace.sizedTinyLarge),
                              Form(
                                  child: Column(
                                children: [
                                  TextFormStyleTitleCustom(
                                    hintText: 'Tuliskan bio kamu',
                                    title: 'Bio',
                                    titleStyle:
                                        TextStyleCustom.textDefault.copyWith(
                                      fontWeight: SizedFontWeight.textLight,
                                      fontSize: SizedSpace.sizedExtraMedium,
                                      color:
                                          ColorsCustom.othersColor.darkgrey70,
                                    ),
                                    // textInputType: TextInputType.emailAddress,
                                    // iconPrefix: Icons.email,
                                    // formController: controller.formEmail.value,
                                    validatorForm: (value) {
                                      if (value!.isFormEmpty)
                                        return "Email Tidak Boleh Kosong";
                                      else if (!value.isValidEmail)
                                        return "Email Harus Benar";
                                      return null;
                                    },
                                  ),
                                  const SizedBox(height: SizedSpace.sized_30),
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
                  color: ColorsCustom.othersColor.whiteGrey50.withOpacity(0.5),
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
                vertical: SizedMarginPadding.sized_10,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: SizedMarginPadding.sized_10,
                ),
                child: ButtonCustom(
                  onTap: () => {
                    controller.goToHome()
                  },
                  title: 'Selesai Buat Profil',
                  borderRadius: SizedBorderRadius.borderRadiusSmall,
                  colorBackground: ColorsCustom.primaryColor.green,
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
