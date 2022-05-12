import 'package:ecobiz_mobile_flutter/app/common_widget/rendering_ui_service/cache_network_image_custom.dart';
import 'package:ecobiz_mobile_flutter/app/res/colors_data.dart';
import 'package:ecobiz_mobile_flutter/app/res/styles.dart';
import 'package:ecobiz_mobile_flutter/const/enum.dart';
import 'package:ecobiz_mobile_flutter/const/sized_font_weight.dart';
import 'package:ecobiz_mobile_flutter/const/sized_margin_padding.dart';
import 'package:ecobiz_mobile_flutter/const/sized_space.dart';
import 'package:flutter/material.dart';
import 'dart:io' show Platform;
import 'package:get/get.dart';

class CardOnboardingStyle extends StatelessWidget {
  final String title;
  final String subTitle;
  final String pathImage;
  const CardOnboardingStyle({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.pathImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Column(
        
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
                    color: ColorsCustom.primaryColor.greengradient,
          child: SizedBox(
            height: Platform.isIOS
                ? MediaQuery.of(context).size.shortestSide < 600
                    ? Get.height - 357
                    : Get.height - 294
                : MediaQuery.of(context).size.shortestSide < 600
                    ? Get.height - 334
                    : Get.height - 294,
            child: CacheNetworkImageCustom(
              idImage: pathImage,
              typeImage: TypeImage.Assets,
            ),
          ),
        ),
        Container(
          color: ColorsCustom.othersColor.whiteGrey20,
          alignment: Alignment.topCenter,
          padding:  EdgeInsets.symmetric(
            horizontal: SizedMarginPadding.sized_22,
            vertical: MediaQuery.of(context).size.shortestSide < 600 ? SizedMarginPadding.sized_10 : SizedMarginPadding.sized_3,
          ),
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyleHeading.textH5Small.copyWith(
                    fontWeight: SizedFontWeight.boldHeavy,
                    color: ColorsCustom.othersColor.darkGrey20),
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: SizedSpace.sizedNormalMedium),
              Text(
                subTitle,
                style: TextStyleParagraph.textParagraphDefault
                    .copyWith(color: ColorsCustom.othersColor.darkGrey20),
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
              ),
              // SizedBox(height: SizedSpace.sizedBig,)
            ],
          ),
        )
      ],
    );
  
    // return Column(
    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //   children: [
    //     Container(
    //       color: ColorsCustom.primaryColor.greengradient,
    //       height: Platform.isIOS
    //           ? MediaQuery.of(context).size.shortestSide < 600
    //               ? Get.height - 347
    //               : Get.height - 284
    //           : MediaQuery.of(context).size.shortestSide < 600
    //               ? Get.height - 312
    //               : Get.height - 274,
    //       child: CacheNetworkImageCustom(
    //         idImage: pathImage,
    //         typeImage: TypeImage.Assets,
    //       ),
    //     ),
    //     Container(
    //       transform: Matrix4.translationValues(0.0, -65.0, 0.0),
    //       // alignment: Alignment.bottomCenter,ss
    //       padding: const EdgeInsets.symmetric(
    //         horizontal: SizedMarginPadding.sized_22,
    //       ),
    //       decoration: BoxDecoration(
    //         color: ColorsCustom.textWhite,
    //         borderRadius: BorderRadius.only(
    //           topLeft: Radius.elliptical(
    //               MediaQuery.of(context).size.width * 0.6, 55),
    //           topRight: Radius.elliptical(
    //               MediaQuery.of(context).size.width * 0.6, 55),
    //         ),
    //       ),
    //       child: Transform.translate(
    //         offset: Offset(0, 40),
    //         child: Column(
    //           children: [
    //             Text(  
    //               title,
    //               overflow: TextOverflow.ellipsis,
    //               maxLines: 3,
    //               style: TextStyleHeading.textH5Small.copyWith(
    //                   fontWeight: SizedFontWeight.boldHeavy,
    //                   color: ColorsCustom.othersColor.darkGrey20),
    //               textAlign: TextAlign.center,
    //             ),
    //             const SizedBox(height: SizedSpace.sizedNormalMedium),
    //             Text(
    //               subTitle,
    //               overflow: TextOverflow.ellipsis,
    //               maxLines: 3,
    //               style: TextStyleParagraph.textParagraphDefault
    //                   .copyWith(color: ColorsCustom.othersColor.darkGrey20),
    //               textAlign: TextAlign.center,

    //             ),
    //           ],
    //         ),
    //       ),
    //     ),
    //   ],
    // );
  
  }
}
// import 'package:ecobiz_mobile_flutter/app/common_widget/rendering_ui_service/cache_network_image_custom.dart';
// import 'package:ecobiz_mobile_flutter/app/res/colors_data.dart';
// import 'package:ecobiz_mobile_flutter/app/res/styles.dart';
// import 'package:ecobiz_mobile_flutter/const/enum.dart';
// import 'package:ecobiz_mobile_flutter/const/sized_font_weight.dart';
// import 'package:ecobiz_mobile_flutter/const/sized_margin_padding.dart';
// import 'package:ecobiz_mobile_flutter/const/sized_space.dart';
// import 'package:flutter/material.dart';
// import 'dart:io' show Platform;
// import 'package:get/get.dart';

// class CardOnboardingStyle extends StatelessWidget {
//   final String title;
//   final String subTitle;
//   final String pathImage;
//   const CardOnboardingStyle({
//     Key? key,
//     required this.title,
//     required this.subTitle,
//     required this.pathImage,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Container(
//           color: ColorsCustom.primaryColor.greengradient,
//           height: Platform.isIOS
//               ? MediaQuery.of(context).size.shortestSide < 600
//                   ? Get.height - 357
//                   : Get.height - 294
//               : MediaQuery.of(context).size.shortestSide < 600
//                   ? Get.height - 334
//                   : Get.height - 294,
//           child: CacheNetworkImageCustom(
//             idImage: pathImage,
//             typeImage: TypeImage.Assets,
//           ),
//         ),
//         Container(
//           color: ColorsCustom.othersColor.whiteGrey20,
//           alignment: Alignment.bottomCenter,
//           padding: const EdgeInsets.symmetric(
//             horizontal: SizedMarginPadding.sized_22,
//           ),
//           child: Column(
//             children: [
//               Text(
//                 title,
//                 style: TextStyleHeading.textH5Small.copyWith(
//                     fontWeight: SizedFontWeight.boldHeavy,
//                     color: ColorsCustom.othersColor.darkGrey20),
//                 textAlign: TextAlign.center,
//               ),
//               const SizedBox(height: SizedSpace.sizedNormalMedium),
//               Text(
//                 subTitle,
//                 style: TextStyleParagraph.textParagraphDefault
//                     .copyWith(color: ColorsCustom.othersColor.darkGrey20),
//                 textAlign: TextAlign.center,
//                 // overflow: TextOverflow.ellipsis,
//               ),
//             ],
//           ),
//         )
//       ],
//     );
//   }
// }
