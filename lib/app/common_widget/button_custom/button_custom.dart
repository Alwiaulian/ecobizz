import 'package:ecobiz_mobile_flutter/app/res/colors_data.dart';
import 'package:ecobiz_mobile_flutter/app/res/styles.dart';
import 'package:ecobiz_mobile_flutter/const/sized_border_radius.dart';
import 'package:ecobiz_mobile_flutter/const/sized_font.dart';
import 'package:ecobiz_mobile_flutter/const/sized_font_weight.dart';
import 'package:ecobiz_mobile_flutter/const/sized_margin_padding.dart';
import 'package:ecobiz_mobile_flutter/const/sized_space.dart';
import 'package:flutter/material.dart';

class ButtonCustom extends StatelessWidget {
  final String title;
  final Widget? iconButton;
  final Widget? iconButtonRight;
  final double borderRadius;
  final Color colorBackground;
  final GestureTapCallback onTap;
  final Color colorTitle;
  final BoxBorder? boxBorder;
  final bool showLoading;
  final EdgeInsetsGeometry? padding;
  final double fontSize;
  final Color colorProgress;

  const ButtonCustom(
      {Key? key,
      this.title = '',
      this.iconButton,
      this.iconButtonRight,
      this.borderRadius = SizedBorderRadius.borderRadiusSmall,
      this.colorBackground = ColorsCustom.colorOrange,
      required this.onTap,
      this.colorTitle = ColorsCustom.textWhite,
      this.boxBorder,
      this.showLoading = false,
      this.padding,
      this.fontSize = SizedFont.textMediumxx,
      this.colorProgress = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Material(
        borderRadius: BorderRadius.circular(borderRadius),
        color:
            (showLoading) ? colorBackground.withOpacity(0.7) : colorBackground,
        child: InkWell(
          borderRadius: BorderRadius.circular(borderRadius),
          splashColor: Colors.grey,
          onTap: (showLoading) ? null : onTap,
          child: Container(
            padding: (padding == null)
                ? const EdgeInsets.symmetric(
                    horizontal: SizedMarginPadding.sized_17,
                    vertical: SizedMarginPadding.sized_12,
                  )
                : padding,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius),
              border: boxBorder,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (showLoading) ...[
                  Container(
                    height: 20,
                    width: 20,
                    child: CircularProgressIndicator(
                      color: colorProgress,
                      strokeWidth: 2,
                    ),
                  ),
                  const SizedBox(width: SizedSpace.sizedTinyMedium),
                ],
                if (iconButton != null) ...[
                  iconButton!,
                ],
                Text(
                  title,
                  style: TextStyleHeading.textH6XSmall.copyWith(
                    color: colorTitle,
                    fontWeight: SizedFontWeight.textBold,
                    fontSize: fontSize,
                  ),
                ),
                const SizedBox(width: SizedSpace.sizedTinyMedium),
                if (iconButtonRight != null) ...[
                  iconButtonRight!,
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
