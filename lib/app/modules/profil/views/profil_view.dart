import 'package:ecobiz_mobile_flutter/app/common_widget/box_view_image/box_profile_image.dart';
import 'package:ecobiz_mobile_flutter/app/res/colors_data.dart';
import 'package:ecobiz_mobile_flutter/app/res/styles.dart';
import 'package:ecobiz_mobile_flutter/const/sized_font.dart';
import 'package:ecobiz_mobile_flutter/const/sized_font_weight.dart';
import 'package:ecobiz_mobile_flutter/const/sized_margin_padding.dart';
import 'package:ecobiz_mobile_flutter/const/sized_space.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';

import '../controllers/profil_controller.dart';

class ProfilView extends StatelessWidget {
  final controller = Get.put(ProfilController(), permanent: true);
  @override
  Widget build(BuildContext context) {
          SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
            statusBarColor: ColorsCustom.colorGreen400,
            statusBarBrightness: Brightness.dark,
            statusBarIconBrightness: Brightness.dark,
          ));

    return GetBuilder<ProfilController>(
        init: ProfilController(),
        builder: (controller) {
          return SafeArea(
              child: Container(
            child: Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // padding: EdgeInsets.only(bottom: 120),
                        height: 110,
                        width: double.infinity,
                        color: ColorsCustom.colorGreen400,
                        child: Column(
                          children: [
                            Transform.translate(
                              offset: const Offset(0, 60),
                              child: Hero(
                                tag: "profile_image_not_found".tr,
                                child: BoxProfileImage(
                                  isFromFile: false,
                                  onTap: () {},
                                  idImage: '',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal:
                              SizedMarginPadding.sizedMarginPaddingLayoutWidth,
                        ),
                        child: Column(
                          children: [
                            Text(
                              // value.name,
                              'Thariq Sepbryan',
                              style: TextStyleHeading.textH4Default.copyWith(
                                color: ColorsCustom.othersColor.darkGrey20,
                                fontWeight: SizedFontWeight.boldHeavy,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              'thariqsebryan@gmail.com',
                              style: TextStyleHeading.textH7XXSmall.copyWith(
                                color: ColorsCustom.othersColor.darkGrey20,
                                fontWeight: SizedFontWeight.textNormal,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: SizedSpace.sizedVeryLarge,
                            ),
                            Text(
                              'Saya adalah petani yang berfokus pada perkebunan cabai. Pengalaman saya dalam bertani sudah 27 tahun lebih.',
                              style: TextStyleParagraph.textParagraphSmall
                                  .copyWith(
                                      color:
                                          ColorsCustom.othersColor.darkgrey70,
                                      fontSize: SizedFont.textSmallx),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: SizedSpace.sizedBig,
                            ),
                            Divider(
                                height: 4,
                                thickness: 2,
                                color: ColorsCustom.othersColor.darkGrey100),
                            SizedBox(
                              height: 24,
                            ),
                            // Text('Akun', textAlign: TextAlign.start),
                            SizedBox(height: 10),
                            Container(
                              margin: EdgeInsets.symmetric(
                                horizontal: SizedMarginPadding
                                    .sizedMarginPaddingLayoutWidth,
                              ),
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'AKUN',
                                    style: TextStyleCaps.textCapsSmall.copyWith(
                                        color:
                                            ColorsCustom.othersColor.grey500),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  GestureDetector(
                                    onTap: () => controller.                                           
                                                    gotoEditProfile(),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: ColorsCustom
                                                      .othersColor.blue50),
                                              height: 42,
                                              width: 42,
                                              child: Icon(
                                                Icons.person,
                                                color: ColorsCustom
                                                    .othersColor.blue500,
                                                size: 24,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 8,
                                            ),
                                            Text(
                                              'Edit Profil',
                                              style: TextStyleHeading
                                                  .textH7XXSmall
                                                  .copyWith(
                                                      fontWeight: SizedFontWeight
                                                          .textBold,
                                                      color: ColorsCustom
                                                          .othersColor
                                                          .darkgrey80),
                                            ),
                                          ],
                                        ),
                                        Icon(
                                          Icons.arrow_forward_ios,
                                          color:
                                              ColorsCustom.othersColor.darkGrey30,
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: ColorsCustom
                                                    .othersColor.orange100),
                                            height: 42,
                                            width: 42,
                                            child: Icon(
                                              Icons.lock,
                                              color: ColorsCustom
                                                  .othersColor.orange400,
                                              size: 24,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Text(
                                            'Ganti Password',
                                            style: TextStyleHeading
                                                .textH7XXSmall
                                                .copyWith(
                                                    fontWeight: SizedFontWeight
                                                        .textBold,
                                                    color: ColorsCustom
                                                        .othersColor
                                                        .darkgrey80),
                                          ),
                                        ],
                                      ),
                                      Icon(
                                        Icons.arrow_forward_ios,
                                        color:
                                            ColorsCustom.othersColor.darkGrey30,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 42,
                                  ),
                                  Text('INFORMASI & BANTUAN',
                                      style: TextStyleCaps.textCapsSmall
                                          .copyWith(
                                              color: ColorsCustom
                                                  .othersColor.grey500)),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Image.asset('assets/images/hubungi_kami.png'),
                                  SizedBox(
                                    height: 20,
                                  ),
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () => controller.processsToLogOut(),
                              child: Text(
                                'Keluar Aplikasi',
                                style: TextStyleHeading.textH7XXSmall.copyWith(
                                    fontWeight: SizedFontWeight.textBold,
                                    color: ColorsCustom.othersColor.red40),
                              ),
                            ),
                            SizedBox(
                              height: 24,
                            ),
                            Text(
                              'Ecobiz v.1.0.0',
                              style: TextStyleCustom.textSmall.copyWith(
                                  color: ColorsCustom.othersColor.darkGrey30),
                            ),

                            SizedBox(
                              height: 28,
                            ),
                            Container(),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ));
        });
  }
}
