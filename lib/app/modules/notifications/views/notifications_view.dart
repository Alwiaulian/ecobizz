import 'package:ecobiz_mobile_flutter/app/common_widget/rendering_ui_service/render_svg_file.dart';
import 'package:ecobiz_mobile_flutter/app/modules/notifications/controllers/notifications_controller.dart';
import 'package:ecobiz_mobile_flutter/app/res/colors_data.dart';
import 'package:ecobiz_mobile_flutter/app/res/path_image_icon.dart';
import 'package:ecobiz_mobile_flutter/app/res/styles.dart';
import 'package:ecobiz_mobile_flutter/const/sized_font_weight.dart';
import 'package:ecobiz_mobile_flutter/const/sized_margin_padding.dart';
import 'package:ecobiz_mobile_flutter/const/sized_space.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';

class NotificationsView extends GetView<NotificationsController> {
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    //   statusBarColor: ColorsCustom.colorOrange,
    //   statusBarBrightness: Brightness.dark,
    //   statusBarIconBrightness: Brightness.dark,
    // ));
    return Scaffold(
      // backgroundColor: ColorsCustom.othersColor.whiteGrey10,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: ColorsCustom.othersColor.darkGrey50,
        // color: ColorsCustom.textWhite,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: ColorsCustom.textWhite,
                padding: EdgeInsets.only(
                    top: SizedMarginPadding.sized_40,
                    bottom: SizedMarginPadding.sized_8),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () => Get.back(),
                      icon: Icon(
                        Icons.arrow_back,
                        size: 24,
                        color: ColorsCustom.colorGreen400,
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Text(
                            'Notifikasi'.tr,
                            style: TextStyleHeading.textH5Small.copyWith(
                              fontWeight: SizedFontWeight.textBold,
                              color: ColorsCustom.textcolorDark,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 4,
              ),
              Column(
                children: List.generate(
                  1,
                  (index) => Container(
                    color: ColorsCustom.textWhite,
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(
                            SizedMarginPadding.sized_24,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                    top: SizedMarginPadding.sized_4),
                                child: RenderSvgFile(
                                  pathImage: PathIlustrator.megaPhone,
                                ),
                              ),
                              SizedBox(width: SizedSpace.sizedNormalLarge),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Halo Thariq, Jelajahi berita terbaru untuk kamu.',
                                          style: TextStyleParagraph
                                              .textParagraphDefault,
                                        ),
                                        Text(
                                          ' Lihat Berita',
                                          style: TextStyleParagraph
                                              .textParagraphDefault.copyWith(color: Colors.blueAccent,decoration: TextDecoration.underline,),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: SizedSpace.sizedVerySmall,
                                    ),
                                    Text(
                                      '7 Jam yang lalu',
                                      style: TextStyleCustom.textSmall.copyWith(
                                          color: ColorsCustom.darkGrey30),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          height: 4,
                        ),
                      ],
                    ),
                  ),
                ),
              ),

                Column(
                children: List.generate(
                  2,
                  (index) => Container(
                    color: ColorsCustom.othersColor.skyBlue05,
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(
                            SizedMarginPadding.sized_24,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                    top: SizedMarginPadding.sized_4),
                                child: RenderSvgFile(
                                  pathImage: PathIlustrator.megaPhone,
                                  colorAsset: ColorsCustom.colorGreen400,
                                ),
                              ),
                              SizedBox(width: SizedSpace.sizedNormalLarge),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '@Pak Andri baru saja memposting di forum ',
                                      style: TextStyleParagraph
                                          .textParagraphDefault,
                                    ),
                                   Text(
                                          'Lihat Forum',
                                          style: TextStyleParagraph
                                              .textParagraphDefault.copyWith(color: Colors.blueAccent,decoration: TextDecoration.underline,),
                                        ),
                                    SizedBox(
                                      height: SizedSpace.sizedVerySmall,
                                    ),
                                    Text(
                                      '7 Jam yang lalu',
                                      style: TextStyleCustom.textSmall.copyWith(
                                          color: ColorsCustom.darkGrey30),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          height: 4,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            
            ],
          ),
        ),
      ),
    );
  }
}
