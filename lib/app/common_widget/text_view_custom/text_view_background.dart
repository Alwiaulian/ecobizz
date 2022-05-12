import 'package:ecobiz_mobile_flutter/app/res/colors_data.dart';
import 'package:ecobiz_mobile_flutter/app/res/styles.dart';
import 'package:ecobiz_mobile_flutter/const/sized_border_radius.dart';
import 'package:ecobiz_mobile_flutter/const/sized_margin_padding.dart';
import 'package:flutter/material.dart';


class TextViewBackground extends StatelessWidget {
  final String title;
  final Color colorBackground;
  final double borderRadius;
  final double paddingHorizontal;
  const TextViewBackground({
    Key? key,
    required this.title,
    required this.colorBackground,
    this.borderRadius = SizedBorderRadius.borderRadiusSuperSmallx,
    this.paddingHorizontal = SizedMarginPadding.sized_10,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: paddingHorizontal,
        vertical: SizedMarginPadding.sized_12,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: colorBackground,
      ),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyleCaps.textCapsXSmall
            .copyWith(color: ColorsCustom.othersColor.whiteGrey10),
      ),
    );
  }
}
