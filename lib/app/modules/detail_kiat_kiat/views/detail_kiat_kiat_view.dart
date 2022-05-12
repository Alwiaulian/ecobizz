import 'package:ecobiz_mobile_flutter/app/common_widget/button_custom/button_custom.dart';
import 'package:ecobiz_mobile_flutter/app/mixin_function_helper/decision_size.dart';
import 'package:ecobiz_mobile_flutter/app/res/colors_data.dart';
import 'package:ecobiz_mobile_flutter/app/res/styles.dart';
import 'package:ecobiz_mobile_flutter/const/sized_font.dart';
import 'package:ecobiz_mobile_flutter/const/sized_font_weight.dart';
import 'package:ecobiz_mobile_flutter/const/sized_margin_padding.dart';
import 'package:ecobiz_mobile_flutter/const/sized_space.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/detail_kiat_kiat_controller.dart';

class DetailKiatKiatView extends GetView<DetailKiatKiatController>
    with DecisionSize {
  final String? username;

  final bool? isObscure;
  DetailKiatKiatView({this.username, this.isObscure});

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
                            'Detail Kiat - Kiat',
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
                    Divider(
                      height: 2,
                      thickness: 2,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: SizedMarginPadding.sized_30,
                      ),
                      child: Column(
                        children: [
                          Text('9 Things to Consider Before Buying Your First NFT',style: TextStyleHeading.textH5Small.copyWith(fontWeight: SizedFontWeight.textBold),),
                          SizedBox(height: 10,),
                                 Row(
                                      children: [
                                        Icon(Icons.access_time,
                                            size: 16,
                                            color: ColorsCustom
                                                .othersColor.darkGrey300),
                                        SizedBox(
                                          width: 2,
                                        ),
                                        Text(
                                          '1 jam yang lalu',
                                          style: TextStyleCustom.textSmall
                                              .copyWith(
                                                  fontSize: SizedFont.textSmall,
                                                  fontWeight:
                                                      SizedFontWeight.textLight,
                                                  color: ColorsCustom
                                                      .othersColor.greyscale),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 17,),
                            
                          Image.asset(
                            'assets/images/detail_kiat_kiat.png',
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            'With the NFT craze seeping out of the walls of Web3 and taking over Web2 platforms, especially considering the heavy endorsement of certain collections by popular names, such as Snoop Dogg, Jimmy Fallon and Eminem, a whole new customer base is now interested in taking a bite out of the NFT pie. In August 2021, the NFT market saw a staggering 280,000 brand new buyers and sellers in the space, almost doubling the NFT trade activity as compared to the previous year.',
                            style: TextStyleParagraph.textParagraphDefault
                                .copyWith(
                                    color: ColorsCustom.othersColor.grey600),
                          ),
                           
                          SizedBox(
                            height: 30,
                          ),
                          Divider(
                            height: 2,
                            thickness: 1,
                            // indent: 30,
                            // endIndent: 40,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: SizedMarginPadding.sized_30,
                      ),
                      // color: ColorsCustom.textWhite,
                      //BERITA
                      child: Column(
                        children: [
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              // crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                // SizedBox(height: SizedSpace.sizedBig,),
                                Column(
                                  // mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: SizedSpace.sizedLightBig,
                                    ),
                                    Text(
                                      'Kiat-Kiat Lainnya',
                                      style: TextStyleHeading.textH6XSmall
                                          .copyWith(
                                              fontWeight:
                                                  SizedFontWeight.textBold,
                                              fontSize: SizedFont.textMediumxx,
                                              color: ColorsCustom
                                                  .othersColor.darkGrey900),
                                    ),
                                    SizedBox(
                                        height: SizedSpace.sizedLightSmall),
                                    Text(
                                      'Temukan berita yang menarik hari ',
                                      style: TextStyleParagraph
                                          .textParagraphSmall
                                          .copyWith(
                                              fontWeight:
                                                  SizedFontWeight.textLight,
                                              fontSize: SizedFont.textSmallx,
                                              color: ColorsCustom
                                                  .othersColor.grey500),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            child: Row(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset('assets/images/berita.png'),
                                SizedBox(
                                  width: 12,
                                ),
                                Column(
                                  // mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Sebulan Jelang Mudik, Tarif Tol \nCipali Naik',
                                      style: TextStyleHeading.textH7XXSmall
                                          .copyWith(
                                              fontSize: SizedFont.headingH7,
                                              fontWeight:
                                                  SizedFontWeight.textBold,
                                              color: ColorsCustom
                                                  .othersColor.darkgrey800),
                                    ),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.access_time,
                                            size: 16,
                                            color: ColorsCustom
                                                .othersColor.darkGrey300),
                                        SizedBox(
                                          width: 2,
                                        ),
                                        Text(
                                          '1 jam yang lalu',
                                          style: TextStyleCustom.textSmall
                                              .copyWith(
                                                  fontSize: SizedFont.textSmall,
                                                  fontWeight:
                                                      SizedFontWeight.textLight,
                                                  color: ColorsCustom
                                                      .othersColor.greyscale),
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            child: Row(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset('assets/images/berita.png'),
                                SizedBox(
                                  width: 12,
                                ),
                                Column(
                                  // mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Sebulan Jelang Mudik, Tarif Tol \nCipali Naik',
                                      style: TextStyleHeading.textH7XXSmall
                                          .copyWith(
                                              fontSize: SizedFont.headingH7,
                                              fontWeight:
                                                  SizedFontWeight.textBold,
                                              color: ColorsCustom
                                                  .othersColor.darkgrey800),
                                    ),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.access_time,
                                            size: 16,
                                            color: ColorsCustom
                                                .othersColor.darkGrey300),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          '1 jam yang lalu',
                                          style: TextStyleCustom.textSmall
                                              .copyWith(
                                                  fontSize: SizedFont.textSmall,
                                                  fontWeight:
                                                      SizedFontWeight.textLight,
                                                  color: ColorsCustom
                                                      .othersColor.greyscale),
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: SizedSpace.sizedExtraBig,
                          )
                        ],
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
