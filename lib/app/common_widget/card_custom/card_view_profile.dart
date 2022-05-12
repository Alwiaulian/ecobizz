import 'package:ecobiz_mobile_flutter/app/res/colors_data.dart';
import 'package:ecobiz_mobile_flutter/app/res/styles.dart';
import 'package:ecobiz_mobile_flutter/const/enum.dart';
import 'package:ecobiz_mobile_flutter/const/sized_font_weight.dart';
import 'package:ecobiz_mobile_flutter/const/sized_icons.dart';
import 'package:ecobiz_mobile_flutter/const/sized_margin_padding.dart';
import 'package:ecobiz_mobile_flutter/const/sized_space.dart';
import 'package:flutter/material.dart';

class CardViewProfile extends StatelessWidget {
  final IconData? iconSuffix;
  final String title;
  final String information;
  final IconData iconPrefix;
  final bool canTap;
  final CardProfileView cardStyle;
  final GestureTapCallback? onTap;
  const CardViewProfile({
    Key? key,
    this.iconSuffix,
    required this.title,
    this.information = '',
    required this.iconPrefix,
    this.canTap = false,
    this.cardStyle = CardProfileView.Information,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // zswitch (cardStyle) {
    //   case CardProfileView.Information:
    return Container(
      padding: EdgeInsets.symmetric(vertical: SizedMarginPadding.sized_15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                iconPrefix,
                color: ColorsCustom.othersColor.darkGrey30,
                size: SizedIcons.sizedSuperLarge,
              ),
              const SizedBox(width: SizedSpace.sizedNormalLarge),
              Expanded(
                child: Text(
                  title,
                  style: TextStyleParagraph.textParagraphDefault.copyWith(
                    color: ColorsCustom.othersColor.darkGrey20,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.topRight,
                  child: Text(information,
                      style: TextStyleHeading.textH7XXSmall.copyWith(
                        fontWeight: SizedFontWeight.textBold,
                        color: ColorsCustom.othersColor.darkGrey20,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis),
                ),
              ),
            ],
          ),
        ],
      ),
    );
    // case CardProfileView.Action:
    //   return GestureDetector(
    //     onTap: onTap,
    //     child: Container(
    //       padding: const EdgeInsets.symmetric(
    //           vertical: SizedMarginPadding.sized_15),
    //       child: Row(
    //         children: [
    //           Icon(
    //             iconPrefix,
    //             color: ColorsCustom.othersColor.darkGrey30,
    //             size: SizedIcons.sizedSuperLarge,
    //           ),
    //           const SizedBox(width: SizedSpace.sizedNormalLarge),
    //           Expanded(
    //             child: Text(
    //               title,
    //               style: TextStyleHeading.textH7XXSmall.copyWith(
    //                 color: ColorsCustom.othersColor.darkGrey20,
    //                 fontWeight: SizedFontWeight.textBold,
    //               ),
    //             ),
    //           ),
    //           if (iconSuffix != null)
    //             Icon(
    //               iconSuffix,
    //               color: ColorsCustom.othersColor.darkGrey30,
    //               size: SizedIcons.sizedSuperLarge,
    //             ),
    //         ],
    //       ),
    //     ),
    //   );
  }
}
