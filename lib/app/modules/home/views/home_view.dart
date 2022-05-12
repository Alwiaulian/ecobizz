import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecobiz_mobile_flutter/app/common_widget/button_custom/button_custom.dart';
import 'package:ecobiz_mobile_flutter/app/common_widget/card_custom/card_list_kiat_kiat_home.dart';
import 'package:ecobiz_mobile_flutter/app/common_widget/card_custom/card_list_produk.dart';
import 'package:ecobiz_mobile_flutter/app/common_widget/home/header/header_slider.dart';
import 'package:ecobiz_mobile_flutter/app/common_widget/home/header/kabar_komunitas_slider.dart';
import 'package:ecobiz_mobile_flutter/app/common_widget/home/top_header/home_top_header.dart';
import 'package:ecobiz_mobile_flutter/app/common_widget/rendering_ui_service/cache_network_image_custom.dart';
import 'package:ecobiz_mobile_flutter/app/res/colors_data.dart';
import 'package:ecobiz_mobile_flutter/app/res/path_image_icon.dart';
import 'package:ecobiz_mobile_flutter/app/res/styles.dart';
import 'package:ecobiz_mobile_flutter/const/enum.dart';
import 'package:ecobiz_mobile_flutter/const/sized_border_radius.dart';
import 'package:ecobiz_mobile_flutter/const/sized_font.dart';
import 'package:ecobiz_mobile_flutter/const/sized_font_weight.dart';
import 'package:ecobiz_mobile_flutter/const/sized_margin_padding.dart';
import 'package:ecobiz_mobile_flutter/const/sized_space.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends StatelessWidget {
  final controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
            statusBarColor: ColorsCustom.colorGreen400,
            statusBarBrightness: Brightness.light,
            statusBarIconBrightness: Brightness.light,
          ));
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            // color: ColorsCustom.othersColor.darkGrey50,
            child: RefreshIndicator(
              onRefresh: controller.refreshView,
              child: SingleChildScrollView(
                child: GetBuilder<HomeController>(
                  id: 'homeView',
                  builder: (controller) {
                    return Column(
                      children: [
                        // SizedBox(height: SizedSpace.sizedBig,),
                        HomeTopHeader(
                            imageProfile: GestureDetector(
                              // onTap: () => controller.goingToProfile(),
                              child: CacheNetworkImageCustom(
                                idImage: '',
                                borderRadius:
                                    SizedBorderRadius.borderRadiusRounded,
                                typeImage: TypeImage.Network,
                                pathImageNotFound:
                                    PathImage.imageNotFoundAvatar,
                              ),
                            ),
                            textSelamat: 'Selamat Datang',
                            textUser: 'Thariq Sepbryan',
                            onTap:
                                // () => controller.goingToNotification(),
                                () {}),
                        Container(
                          color: ColorsCustom.othersColor.green400,
                          // decoration: BoxDecoration(
                          //     gradient: ColorsCustom.linearGradientHomeTop),
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(
                                  horizontal: SizedMarginPadding
                                      .sizedMarginPaddingLayoutWidth,
                                ),
                                child: Column(
                                  children: [
                                    Obx(
                                      () => HeaderSlider(
                                        dataList: 3,
                                        currentIndexBanner:
                                            controller.currentIndexBanner.value,
                                        carouselController:
                                            controller.controllerCarousel,
                                        onPageChange: (int index,
                                                CarouselPageChangedReason
                                                    reason) =>
                                            controller.onPageChange(index),
                                      ),
                                    ),
                                    const SizedBox(
                                        height: SizedSpace.sizedVeryBig),
                                      
                                    
                                     Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      // crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                       new GestureDetector(
                                         onTap: (){
                                          //  print('clicke');
                                          controller.gotoKiatKiat();
                                         },
                                          child: Container(
                                            padding: EdgeInsets.only(right: 10),
                                            child: Column(
                                              children: [
                                                Container(
                                                  width: 44.0,
                                                  height: 44.0,
                                                  child: Image.asset(
                                                      'assets/images/icon_files.png'),
                                                  decoration: BoxDecoration(
                                                    color: ColorsCustom.textWhite,
                                                    borderRadius:
                                                        BorderRadius.circular(8),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: SizedSpace.sizedSmall,
                                                ),
                                          
                                                Text(
                                                  'Kiat - Kiat',
                                                  style: TextStyleHeading
                                                      .textH8SuperSmall
                                                      .copyWith(
                                                          fontSize: SizedFont
                                                              .textSmallx,
                                                          fontWeight:
                                                              SizedFontWeight
                                                                  .textBold,
                                                          color: ColorsCustom
                                                              .textWhite),
                                                  overflow: TextOverflow.ellipsis,
                                                  maxLines: 2,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                       
                                        Container(
                                          // margin: EdgeInsets.only(left: 20),
                                          padding: EdgeInsets.only(right: 25),
                                          child: Column(
                                            children: [
                                              Container(
                                                width: 44.0,
                                                height: 44.0,
                                                child: Image.asset(
                                                    'assets/images/icon_book.png'),
                                                decoration: BoxDecoration(
                                                    color: ColorsCustom.textWhite,
                                                    borderRadius:
                                                        BorderRadius.circular(8)),
                                              ),
                                              SizedBox(
                                                height: SizedSpace.sizedSmall,
                                              ),
                                              Text(
                                                'Berita',
                                                style: TextStyleHeading
                                                    .textH8SuperSmall
                                                    .copyWith(
                                                        fontSize: SizedFont
                                                            .textSmallx,
                                                        fontWeight:
                                                            SizedFontWeight
                                                                .textBold,
                                                        color: ColorsCustom
                                                            .textWhite),
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 2,
                                              )
                                            ],
                                          ),
                                        ),
                                       
                                        Container(
                                          padding: EdgeInsets.only(right: 14),
                                          child: Column(
                                            children: [
                                              Container(
                                                width: 44.0,
                                                height: 44.0,
                                                child: Image.asset(
                                                    'assets/images/icon_growth.png'),
                                                decoration: BoxDecoration(
                                                    color: ColorsCustom.textWhite,
                                                    borderRadius:
                                                        BorderRadius.circular(8)),
                                              ),
                                              SizedBox(
                                                height: SizedSpace.sizedSmall,
                                              ),
                                              Column(
                                                children: [
                                                  Text(
                                                    'Forum',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyleHeading
                                                        .textH8SuperSmall
                                                        .copyWith(
                                                            fontSize: SizedFont
                                                                .textSmallx,
                                                            fontWeight:
                                                                SizedFontWeight
                                                                    .textBold,
                                                            color: ColorsCustom
                                                                .textWhite),
                                                    // overflow:
                                                    //     TextOverflow.ellipsis,
                                                    // maxLines: 2,
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),

                                        Container(
                                          padding: EdgeInsets.only(left: 6),
                                          child: Column(
                                            children: [
                                              Container(
                                                width: 44.0,
                                                height: 44.0,
                                                child: Image.asset(
                                                    'assets/images/icon_search.png'),
                                                decoration: BoxDecoration(
                                                    color: ColorsCustom.textWhite,
                                                    borderRadius:
                                                        BorderRadius.circular(8)),
                                              ),
                                              SizedBox(
                                                height: SizedSpace.sizedSmall,
                                              ),
                                              Text(
                                                'Produk',
                                                textAlign: TextAlign.center,
                                                style: TextStyleHeading
                                                    .textH8SuperSmall
                                                    .copyWith(
                                                        fontSize: SizedFont
                                                            .textSmallx,
                                                        fontWeight:
                                                            SizedFontWeight
                                                                .textBold,
                                                        color: ColorsCustom
                                                            .textWhite),
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 2,
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: SizedSpace.sizedBig,),
                                
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      // crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.only(left: 10),
                                          child: Column(
                                            children: [
                                              Container(
                                                width: 44.0,
                                                height: 44.0,
                                                child: Image.asset(
                                                    'assets/images/icon_files.png'),
                                                decoration: BoxDecoration(
                                                  color: ColorsCustom.textWhite,
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                              ),
                                              SizedBox(
                                                height: SizedSpace.sizedSmall,
                                              ),

                                              Text(
                                                'Modul',
                                                style: TextStyleHeading
                                                    .textH8SuperSmall
                                                    .copyWith(
                                                        fontSize: SizedFont
                                                            .textSmallx,
                                                        fontWeight:
                                                            SizedFontWeight
                                                                .textBold,
                                                        color: ColorsCustom
                                                            .textWhite),
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 2,
                                              ),
                                            ],
                                          ),
                                        ),
                                       
                                        Container(
                                          // margin: EdgeInsets.only(left: 20),
                                          padding: EdgeInsets.only(left: 25),
                                          child: Column(
                                            children: [
                                              Container(
                                                width: 44.0,
                                                height: 44.0,
                                                child: Image.asset(
                                                    'assets/images/icon_book.png'),
                                                decoration: BoxDecoration(
                                                    color: ColorsCustom.textWhite,
                                                    borderRadius:
                                                        BorderRadius.circular(8)),
                                              ),
                                              SizedBox(
                                                height: SizedSpace.sizedSmall,
                                              ),
                                              Text(
                                                'Artikel',
                                                style: TextStyleHeading
                                                    .textH8SuperSmall
                                                    .copyWith(
                                                        fontSize: SizedFont
                                                            .textSmallx,
                                                        fontWeight:
                                                            SizedFontWeight
                                                                .textBold,
                                                        color: ColorsCustom
                                                            .textWhite),
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 2,
                                              )
                                            ],
                                          ),
                                        ),
                                       
                                        Container(
                                          padding: EdgeInsets.only(top: 10,left: 10),
                                          child: Column(
                                            children: [
                                              Container(
                                                width: 44.0,
                                                height: 44.0,
                                                child: Image.asset(
                                                    'assets/images/icon_growth.png'),
                                                decoration: BoxDecoration(
                                                    color: ColorsCustom.textWhite,
                                                    borderRadius:
                                                        BorderRadius.circular(8)),
                                              ),
                                              SizedBox(
                                                height: SizedSpace.sizedSmall,
                                              ),
                                              Column(
                                                children: [
                                                  Text(
                                                    'Informasi\n Perdagangan',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyleHeading
                                                        .textH8SuperSmall
                                                        .copyWith(
                                                            fontSize: SizedFont
                                                                .textSmallx,
                                                            fontWeight:
                                                                SizedFontWeight
                                                                    .textBold,
                                                            color: ColorsCustom
                                                                .textWhite),
                                                    // overflow:
                                                    //     TextOverflow.ellipsis,
                                                    // maxLines: 2,
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),

                                        Container(
                                          padding: EdgeInsets.only(top: 10,left: 6),
                                          child: Column(
                                            children: [
                                              Container(
                                                width: 44.0,
                                                height: 44.0,
                                                child: Image.asset(
                                                    'assets/images/icon_search.png'),
                                                decoration: BoxDecoration(
                                                    color: ColorsCustom.textWhite,
                                                    borderRadius:
                                                        BorderRadius.circular(8)),
                                              ),
                                              SizedBox(
                                                height: SizedSpace.sizedSmall,
                                              ),
                                              Text(
                                                'Informasi\n Data',
                                                textAlign: TextAlign.center,
                                                style: TextStyleHeading
                                                    .textH8SuperSmall
                                                    .copyWith(
                                                        fontSize: SizedFont
                                                            .textSmallx,
                                                        fontWeight:
                                                            SizedFontWeight
                                                                .textBold,
                                                        color: ColorsCustom
                                                            .textWhite),
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 2,
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: SizedSpace.sized_30,)
                                    // SizedBox(
                                    //   height: SizedSpace.sizedLarge,
                                    // ),
                                    // Row(
                                    //   mainAxisAlignment:
                                    //       MainAxisAlignment.spaceEvenly,
                                    //   // crossAxisAlignment: CrossAxisAlignment.center,
                                    //   children: [
                                    //     Column(
                                    //       children: [
                                    //         Container(
                                    //           width: 44.0,
                                    //           height: 44.0,
                                    //           child: Image.asset(
                                    //               'assets/images/icon_files.png'),
                                    //           decoration: BoxDecoration(
                                    //             color: ColorsCustom.textWhite,
                                    //             borderRadius:
                                    //                 BorderRadius.circular(8),
                                    //           ),
                                    //         ),
                                    //         SizedBox(
                                    //           height: SizedSpace.sizedSmall,
                                    //         ),
                                    //         Container(
                                    //           child: Text(
                                    //             'Modul',
                                    //             style: TextStyleHeading
                                    //                 .textH8SuperSmall
                                    //                 .copyWith(
                                    //                     fontSize: SizedFont
                                    //                         .textSmallx,
                                    //                     fontWeight:
                                    //                         SizedFontWeight
                                    //                             .textBold,
                                    //                     color: ColorsCustom
                                    //                         .textWhite),
                                    //             overflow: TextOverflow.ellipsis,
                                    //             maxLines: 2,
                                    //           ),
                                    //         ),
                                    //       ],
                                    //     ),
                                    //     Column(
                                    //       children: [
                                    //         Container(
                                    //           width: 44.0,
                                    //           height: 44.0,
                                    //           child: Image.asset(
                                    //               'assets/images/icon_book.png'),
                                    //           decoration: BoxDecoration(
                                    //               color: ColorsCustom.textWhite,
                                    //               borderRadius:
                                    //                   BorderRadius.circular(8)),
                                    //         ),
                                    //         SizedBox(
                                    //           height: SizedSpace.sizedSmall,
                                    //         ),
                                    //         Container(
                                    //           child: Text(
                                    //             'Artikel',
                                    //             style: TextStyleHeading
                                    //                 .textH8SuperSmall
                                    //                 .copyWith(
                                    //                     fontSize: SizedFont
                                    //                         .textSmallx,
                                    //                     fontWeight:
                                    //                         SizedFontWeight
                                    //                             .textBold,
                                    //                     color: ColorsCustom
                                    //                         .textWhite),
                                    //             overflow: TextOverflow.ellipsis,
                                    //             maxLines: 2,
                                    //           ),
                                    //         )
                                    //       ],
                                    //     ),
                                    //     Column(
                                    //       children: [
                                    //         Container(
                                    //           width: 44.0,
                                    //           height: 44.0,
                                    //           child: Image.asset(
                                    //               'assets/images/icon_growth.png'),
                                    //           decoration: BoxDecoration(
                                    //               color: ColorsCustom.textWhite,
                                    //               borderRadius:
                                    //                   BorderRadius.circular(8)),
                                    //         ),
                                    //         SizedBox(
                                    //           height: SizedSpace.sizedSmall,
                                    //         ),
                                    //         Container(
                                    //           // padding: EdgeInsets.only(top: 4),
                                    //           // margin: EdgeInsets.only(top: 4),
                                    //           child: Column(
                                    //             children: [
                                    //               Text(
                                    //                 'Informasi\n Perdagangan',
                                    //                 textAlign: TextAlign.center,
                                    //                 style: TextStyleHeading
                                    //                     .textH8SuperSmall
                                    //                     .copyWith(
                                    //                         fontSize: SizedFont
                                    //                             .textSmallx,
                                    //                         fontWeight:
                                    //                             SizedFontWeight
                                    //                                 .textBold,
                                    //                         color: ColorsCustom
                                    //                             .textWhite),
                                    //                 // overflow:
                                    //                 //     TextOverflow.ellipsis,
                                    //                 // maxLines: 2,
                                    //               ),
                                    //             ],
                                    //           ),
                                    //         )
                                    //       ],
                                    //     ),
                                    //     Column(
                                    //       children: [
                                    //         Container(
                                    //           width: 44.0,
                                    //           height: 44.0,
                                    //           child: Image.asset(
                                    //               'assets/images/icon_search.png'),
                                    //           decoration: BoxDecoration(
                                    //               color: ColorsCustom.textWhite,
                                    //               borderRadius:
                                    //                   BorderRadius.circular(8)),
                                    //         ),
                                    //         SizedBox(
                                    //           height: SizedSpace.sizedSmall,
                                    //         ),
                                    //         Container(
                                    //           child: Text(
                                    //             'Informasi\n Data',
                                    //             textAlign: TextAlign.center,
                                    //             style: TextStyleHeading
                                    //                 .textH8SuperSmall
                                    //                 .copyWith(
                                    //                     fontSize: SizedFont
                                    //                         .textSmallx,
                                    //                     fontWeight:
                                    //                         SizedFontWeight
                                    //                             .textBold,
                                    //                     color: ColorsCustom
                                    //                         .textWhite),
                                    //             overflow: TextOverflow.ellipsis,
                                    //             maxLines: 2,
                                    //           ),
                                    //         ),
                                    //         SizedBox(
                                    //           height: SizedSpace.sizedExtraBig,
                                    //         ),
                                    //       ],
                                    //     ),
                                    //   ],
                                    // ),
                                 
                                  ],
                                ),
                              ),
                              Container(
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(
                                        SizedBorderRadius.borderRadiusLargexx),
                                    topRight: Radius.circular(
                                        SizedBorderRadius.borderRadiusLargexx),
                                  ),
                                  color: Colors.white,
                                // color: ColorsCustom.colorBackground,

                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      // color: ColorsCustom.textWhite,
                                      //KIAT2
                                      child: Column(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.symmetric(
                                              horizontal:
                                                  SizedMarginPadding.sized_30,
                                            ),
                                            child: 
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              // crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                // SizedBox(height: SizedSpace.sizedBig,),
                                                Column(
                                                  // mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    SizedBox(
                                                      height: SizedSpace
                                                          .sizedLightBig,
                                                    ),
                                                    Text(
                                                      'Kiat - Kiat',
                                                      style: TextStyleHeading
                                                          .textH6XSmall
                                                          .copyWith(
                                                              fontWeight:
                                                                  SizedFontWeight
                                                                      .textBold,
                                                              fontSize: SizedFont
                                                                  .textMediumxx,
                                                              color: ColorsCustom
                                                                  .othersColor
                                                                  .darkGrey900),
                                                    ),
                                                    SizedBox(
                                                        height: SizedSpace
                                                            .sizedLightSmall),
                                                    Text(
                                                      'Kiat-Kiat terbaru untuk kamu',
                                                      style: TextStyleParagraph
                                                          .textParagraphSmall
                                                          .copyWith(
                                                              fontWeight:
                                                                  SizedFontWeight
                                                                      .textLight,
                                                              fontSize: SizedFont
                                                                  .textSmallx,
                                                              color: ColorsCustom
                                                                  .othersColor
                                                                  .grey500),
                                                    ),
                                                  ],
                                                ),

                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 16),
                                                  child: ButtonCustom(
                                                    onTap: () {},
                                                    colorBackground:
                                                        ColorsCustom
                                                            .colorGreen400,
                                                    title: '  Lihat Semua',
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                      vertical:
                                                          SizedMarginPadding
                                                              .sized_8,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: SizedSpace.sizedExtraBig,
                                          ),
                                          SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            child: Row(
                                              children: List.generate(
                                                3,
                                                (index) => NewCardListSeminar(
                                                    lastItem: false,
                                                    dataList: '',
                                                    onTap: () {},
                                                    onTapJoin: () {}),
                                              ),
                                              // List.generate(datalist.length, (index) => null).
                                            ),
                                          ),
                                          SizedBox(
                                            height: SizedSpace.sizedBig,
                                          ),
                                          Container(
                                              margin: EdgeInsets.symmetric(
                                              horizontal:
                                                  SizedMarginPadding.sized_30,
                                            ),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                // crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  // SizedBox(height: SizedSpace.sizedBig,),
                                                  Column(
                                                    // mainAxisAlignment: MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.start,
                                                    children: [
                                                      SizedBox(
                                                        height: SizedSpace
                                                            .sizedLightBig,
                                                      ),
                                                      Text(
                                                        'Produk',
                                                        style: TextStyleHeading
                                                            .textH6XSmall
                                                            .copyWith(
                                                                fontWeight:
                                                                    SizedFontWeight
                                                                        .textBold,
                                                                fontSize: SizedFont
                                                                    .textMediumxx,
                                                                color: ColorsCustom
                                                                    .othersColor
                                                                    .darkGrey900),
                                                      ),
                                                      SizedBox(
                                                          height: SizedSpace
                                                              .sizedLightSmall),
                                                      Text(
                                                        'Produk terbaru untuk kamu',
                                                        style: TextStyleParagraph
                                                            .textParagraphSmall
                                                            .copyWith(
                                                                fontWeight:
                                                                    SizedFontWeight
                                                                        .textLight,
                                                                fontSize: SizedFont
                                                                    .textSmallx,
                                                                color: ColorsCustom
                                                                    .othersColor
                                                                    .grey500),
                                                      ),
                                                    ],
                                                  ),

                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 16),
                                                    child: ButtonCustom(
                                                      onTap: () {},
                                                      colorBackground:
                                                          ColorsCustom
                                                              .colorGreen400,
                                                      title: '  Lihat Semua',
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                        vertical:
                                                            SizedMarginPadding
                                                                .sized_8,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                          ),
                                            SizedBox(
                                            height: SizedSpace.sizedExtraBig,
                                          ),
                                          SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            child: Row(
                                              children: List.generate(
                                                3,
                                                (index) => CardListProduk(
                                                    lastItem: false,
                                                    dataList: '',
                                                    onTap: () {},
                                                    onTapJoin: () {}),
                                              ),
                                              // List.generate(datalist.length, (index) => null).
                                            ),
                                          ),
                                          SizedBox(
                                            height: SizedSpace.sizedBig,
                                          ),
                                          
                                          Obx(
                                            () => KabarKomunitasSlider(
                                              dataList: 3,
                                              currentIndexBanner: controller
                                                  .currentIndexBanner.value,
                                              carouselController:
                                                  controller.controllerCarousel,
                                              onPageChange: (int index,
                                                      CarouselPageChangedReason
                                                          reason) =>
                                                  controller
                                                      .onPageChange(index),
                                            ),
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
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              // crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                // SizedBox(height: SizedSpace.sizedBig,),
                                                Column(
                                                  // mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    SizedBox(
                                                      height: SizedSpace
                                                          .sizedLightBig,
                                                    ),
                                                    Text(
                                                      'Berita',
                                                      style: TextStyleHeading
                                                          .textH6XSmall
                                                          .copyWith(
                                                              fontWeight:
                                                                  SizedFontWeight
                                                                      .textBold,
                                                              fontSize: SizedFont
                                                                  .textMediumxx,
                                                              color: ColorsCustom
                                                                  .othersColor
                                                                  .darkGrey900),
                                                    ),
                                                    SizedBox(
                                                        height: SizedSpace
                                                            .sizedLightSmall),
                                                    Text(
                                                      'Temukan berita yang menarik hari ',
                                                      style: TextStyleParagraph
                                                          .textParagraphSmall
                                                          .copyWith(
                                                              fontWeight:
                                                                  SizedFontWeight
                                                                      .textLight,
                                                              fontSize: SizedFont
                                                                  .textSmallx,
                                                              color: ColorsCustom
                                                                  .othersColor
                                                                  .grey500),
                                                    )
                                                  ],
                                                ),

                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 16),
                                                  child: ButtonCustom(
                                                    onTap: () {},
                                                    colorBackground:
                                                        ColorsCustom
                                                            .colorGreen400,
                                                    title: '  Lihat Semua',
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                      vertical:
                                                          SizedMarginPadding
                                                              .sized_8,
                                                      // horizontal:
                                                      //     SizedMarginPadding
                                                      //         .sized_2
                                                    ),
                                                  ),
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
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Image.asset(
                                                    'assets/images/berita.png'),
                                                SizedBox(
                                                  width: 12,
                                                ),
                                                Column(
                                                  // mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Sebulan Jelang Mudik, Tarif Tol \nCipali Naik',
                                                      style: TextStyleHeading
                                                          .textH7XXSmall
                                                          .copyWith(
                                                              fontSize: SizedFont
                                                                  .headingH7,
                                                              fontWeight:
                                                                  SizedFontWeight
                                                                      .textBold,
                                                              color: ColorsCustom
                                                                  .othersColor
                                                                  .darkgrey800),
                                                    ),
                                                    SizedBox(
                                                      height: 16,
                                                    ),
                                                    Row(
                                                      children: [
                                                        Icon(Icons.access_time,
                                                            size: 16,
                                                            color: ColorsCustom
                                                                .othersColor
                                                                .darkGrey300),
                                                        SizedBox(
                                                          width: 10,
                                                        ),
                                                        Text(
                                                          '1 jam yang lalu',
                                                          style: TextStyleCustom.textSmall.copyWith(
                                                              fontSize: SizedFont
                                                                  .textSmall,
                                                              fontWeight:
                                                                  SizedFontWeight
                                                                      .textLight,
                                                              color: ColorsCustom
                                                                  .othersColor
                                                                  .greyscale),
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
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Image.asset(
                                                    'assets/images/berita.png'),
                                                SizedBox(
                                                  width: 12,
                                                ),
                                                Column(
                                                  // mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Sebulan Jelang Mudik, Tarif Tol \nCipali Naik',
                                                      style: TextStyleHeading
                                                          .textH7XXSmall
                                                          .copyWith(
                                                              fontSize: SizedFont
                                                                  .headingH7,
                                                              fontWeight:
                                                                  SizedFontWeight
                                                                      .textBold,
                                                              color: ColorsCustom
                                                                  .othersColor
                                                                  .darkgrey800),
                                                    ),
                                                    SizedBox(
                                                      height: 16,
                                                    ),
                                                    Row(
                                                      children: [
                                                        Icon(Icons.access_time,
                                                            size: 16,
                                                            color: ColorsCustom
                                                                .othersColor
                                                                .darkGrey300),
                                                        SizedBox(
                                                          width: 10,
                                                        ),
                                                        Text(
                                                          '1 jam yang lalu',
                                                          style: TextStyleCustom.textSmall.copyWith(
                                                              fontSize: SizedFont
                                                                  .textSmall,
                                                              fontWeight:
                                                                  SizedFontWeight
                                                                      .textLight,
                                                              color: ColorsCustom
                                                                  .othersColor
                                                                  .greyscale),
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
                              )
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
