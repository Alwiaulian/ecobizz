
import 'package:ecobiz_mobile_flutter/app/common_widget/button_custom/button_custom.dart';
import 'package:ecobiz_mobile_flutter/app/res/colors_data.dart';
import 'package:ecobiz_mobile_flutter/app/res/styles.dart';
import 'package:ecobiz_mobile_flutter/const/sized_border_radius.dart';
import 'package:ecobiz_mobile_flutter/const/sized_font_weight.dart';
import 'package:ecobiz_mobile_flutter/const/sized_margin_padding.dart';
import 'package:ecobiz_mobile_flutter/const/sized_space.dart';
import 'package:ecobiz_mobile_flutter/services/utils/formatter.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';



class BoxDescriptionKiatKiat extends StatelessWidget {
  final String title;
  final String date;
  final GestureTapCallback onTap;
  final bool enableButtonJoin;
  const BoxDescriptionKiatKiat({
    Key? key,
    required this.title,
    required this.date,
    required this.onTap,
    this.enableButtonJoin = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(SizedMarginPadding.sized_14),
      padding: const EdgeInsets.all(SizedMarginPadding.sized_12),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius:
              BorderRadius.circular(SizedBorderRadius.borderRadiusButton)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyleHeading.textH6XSmall.copyWith(
              fontWeight: SizedFontWeight.boldHeavy,
              color: ColorsCustom.othersColor.darkGrey10,
            ),
            maxLines: 2,
          ),
          const SizedBox(height: SizedSpace.sizedSmall),
          Text(
            Formatter.getInstance.convertStringDateTimeFormatter(
              source: date,
              fromFormat: Formatter.formatterDateTime4,
              toFormat: Formatter.formatterDateTime6,
            ),
            style: TextStyleHeading.textH7XXSmall.copyWith(
              fontWeight: SizedFontWeight.textBold,
              color: ColorsCustom.othersColor.darkGrey20,
            ),
          ),
          const SizedBox(height: SizedSpace.sizedSmall),
          Row(
            children: [
              const Icon(Icons.timer, size: 16),
              const SizedBox(width: SizedSpace.sizedSmall),
              Text(
                '${Formatter.getInstance.convertStringDateTimeFormatter(source: date, fromFormat: Formatter.formatterDateTime4, toFormat: Formatter.formatterTime)}  WIB',
                style: TextStyleCustom.textDefault.copyWith(
                  color: ColorsCustom.othersColor.darkGrey20,
                ),
              ),
            ],
          ),
          const SizedBox(height: SizedSpace.sizedExtraMedium),
          ButtonCustom(
            onTap: enableButtonJoin ? onTap : () {},
            title: "button_ikut_seminar".tr,
            colorTitle: enableButtonJoin
                ? ColorsCustom.textWhite
                : ColorsCustom.othersColor.darkGrey30,
            colorBackground: enableButtonJoin
                ? ColorsCustom.colorOrange
                : ColorsCustom.othersColor.whiteGrey40,
          )
        ],
      ),
    );
  }
}
