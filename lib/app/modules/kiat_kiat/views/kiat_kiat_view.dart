import 'package:ecobiz_mobile_flutter/app/common_widget/card_custom/card_list_kiat_kiat.dart';
import 'package:ecobiz_mobile_flutter/app/common_widget/card_custom/card_list_kiat_kiat_home.dart';
import 'package:ecobiz_mobile_flutter/app/common_widget/rendering_ui_service/cache_network_image_custom.dart';
import 'package:ecobiz_mobile_flutter/app/common_widget/text_form_custom/text_form_style_number_phone.dart';
import 'package:ecobiz_mobile_flutter/app/common_widget/text_view_custom/text_view_custom_ontap.dart';
import 'package:ecobiz_mobile_flutter/app/mixin_function_helper/decision_size.dart';
import 'package:ecobiz_mobile_flutter/app/res/colors_data.dart';
import 'package:ecobiz_mobile_flutter/app/res/path_image_icon.dart';
import 'package:ecobiz_mobile_flutter/app/res/styles.dart';
import 'package:ecobiz_mobile_flutter/const/enum.dart';
import 'package:ecobiz_mobile_flutter/const/sized_font.dart';
import 'package:ecobiz_mobile_flutter/const/sized_font_weight.dart';
import 'package:ecobiz_mobile_flutter/const/sized_heading_text.dart';
import 'package:ecobiz_mobile_flutter/const/sized_margin_padding.dart';
import 'package:ecobiz_mobile_flutter/const/sized_space.dart';
import 'package:ecobiz_mobile_flutter/middleware/extension/string_extension.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/kiat_kiat_controller.dart';

class KiatKiatView extends GetView<KiatKiatController> with DecisionSize {
  final String? username;
  
  final bool? isObscure;
  KiatKiatView({this.username, this.isObscure});
  
  
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
                            'Kiat - Kiat',
                            style: TextStyleHeading.textH5Small.copyWith(
                              fontWeight: SizedFontWeight.textBold,
                            ),
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
                              // color: ColorsCustom.textGrey,
                              // height: 36,
                            )),
                      ),
                    ]),
                    SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            child: Column(
                                              children: List.generate(
                                                3,
                                                (index) => CardListKiatKiat(
                                                    lastItem: false,
                                                    dataList: '',
                                                    onTap: () => {controller.gotoDetailKiatKiat()},
                                                    onTapJoin: () {}),
                                              ),
                                              // List.generate(datalist.length, (index) => null).
                                            ),
                                          ),
               
                 
                  ],
                ),
              ),
            ),
            // Container(
            //   decoration:
            //       BoxDecoration(color: ColorsCustom.textWhite, boxShadow: [
            //     BoxShadow(
            //       color: ColorsCustom.textWhite.withOpacity(0.5),
            //       // spreadRadius: -10,
            //       blurRadius: 0.0,
            //       offset: Offset(
            //         -0,
            //         -4,
            //       ),
            //     ),
            //     BoxShadow(
            //       color: ColorsCustom.othersColor.whiteGrey50.withOpacity(0.5),
            //       // spreadRadius: -10,
            //       blurRadius: 3.0,
            //       offset: Offset(
            //         -0,
            //         -4,
            //       ),
            //     ),
            //   ]),
            //   padding: EdgeInsets.symmetric(
            //       horizontal: SizedMarginPadding.sizedMarginPaddingLayoutWidth,
            //       vertical: SizedMarginPadding.sizedMarginPaddingLayoutWidth),
            //   margin: EdgeInsets.symmetric(
            //     vertical: SizedMarginPadding.sized_10,
            //   ),
            // ),
          
          ],
        ),
      ),
    ));
  }

  void setState(Null Function() param0) {}
}
