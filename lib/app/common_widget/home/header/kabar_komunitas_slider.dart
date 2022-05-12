import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecobiz_mobile_flutter/app/common_widget/card_custom/box_frame_banner.dart';
import 'package:ecobiz_mobile_flutter/app/common_widget/card_custom/box_frame_kabar_komunitas.dart';
import 'package:ecobiz_mobile_flutter/app/res/colors_data.dart';
import 'package:ecobiz_mobile_flutter/app/res/path_image_icon.dart';
import 'package:flutter/material.dart';

class KabarKomunitasSlider extends StatelessWidget    {
  final int  dataList;
  final int currentIndexBanner;
  final int dataLength;
  final int currentPage;
  final CarouselController carouselController;
  final Function(int index, CarouselPageChangedReason reason) onPageChange;
  // final Function(int index) onTapIndicatorBanner;
  const KabarKomunitasSlider({
    Key? key,

    this.dataLength = 0,
    this.currentPage = 0,
    required this.dataList,
    required this.currentIndexBanner,
    required this.carouselController,
    required this.onPageChange,
    // required this.onTapIndicatorBanner,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            child: CarouselSlider(
              items: List.generate(
                dataList > 10 ? 10 : dataList,
                (index) => GestureDetector(
                  onTap: () {
                    // switch (dataList[index].type) {
                    //   case "webinar":
                    //     Get.toNamed(Routes.WEBINAR,
                    //         arguments: dataList[index].source);
                    //     break;
                    //   case "url":
                    //     try {
                    //       LaunchUrl.getInstance
                    //           .launchURL(dataList[index].source);
                    //     } on FormatException catch (e) {
                    //       AlertMessage.errorMessage(context,
                    //           message: e.message.toString(), onClose: false);
                    //     }
                    //     break;
                    //   case "content":
                    //     Get.toNamed(Routes.NEW_DETAIL_CLASS,
                    //         arguments: dataList[index].source);
                    //     break;
                    //   default:
                    //     break;
                    // }
                  },
                  child: BoxFrameKabarKomunitas(
                    idImage: 
                         PathImage.kabarKomunitas

                  ),
                ),
              ),
              carouselController: carouselController,
              options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                viewportFraction:
                    MediaQuery.of(context).size.shortestSide < 600 ? 0.9 : 0.95,
                aspectRatio: 2.20,
                onPageChanged: onPageChange,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              dataList > 10 ? 10 : dataList,
              (index) => Container(
                width: 8,
                height: 8,
                margin: const EdgeInsets.only(top: 16, left: 8, right: 8),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  // color: ColorsCustom.colorGreen
                  color: (Theme.of(context).brightness == Brightness.dark
                          ? ColorsCustom.othersColor.green10
                          : ColorsCustom.othersColor.yellow10)
                      .withOpacity(currentIndexBanner == index ? 1.0 : 0.4),
                ),
              ),
            ),
          ),
       
        ],
      ),
    );
  }
}
