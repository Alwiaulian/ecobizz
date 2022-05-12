import 'package:ecobiz_mobile_flutter/app/common_widget/button_custom/button_custom.dart';
import 'package:ecobiz_mobile_flutter/app/res/colors_data.dart';
import 'package:ecobiz_mobile_flutter/app/res/styles.dart';
import 'package:ecobiz_mobile_flutter/const/sized_font.dart';
import 'package:ecobiz_mobile_flutter/const/sized_font_weight.dart';
import 'package:ecobiz_mobile_flutter/const/sized_margin_padding.dart';
import 'package:ecobiz_mobile_flutter/const/sized_space.dart';
import 'package:flutter/material.dart';

class ScreenSuccess extends StatelessWidget {
  final GestureTapCallback onTap;
  final String title;
  final String subtitle;
  const ScreenSuccess({
    Key? key,
    required this.onTap,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(
              horizontal: SizedMarginPadding.sizedMarginPaddingLayoutWidth),
          child: Column(
            children: [
              const SizedBox(height: SizedSpace.sized_100),
              // const RenderSvgFile(
              //   pathImage: PathIlustrator.checkSuccess,
              // ),
              const SizedBox(height: SizedSpace.sized_40),
              Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyleHeading.textH4Default.copyWith(
                    fontWeight: SizedFontWeight.textBold,
                    fontSize: SizedFont.textSuperLargexx,
                    color: ColorsCustom.textcolorDark),
              ),
              const SizedBox(height: SizedSpace.sized_30),
              Text(
                subtitle,
                textAlign: TextAlign.center,
                style: TextStyleParagraph.textParagraphDefault
                    .copyWith(color: ColorsCustom.textcolorDark),
              ),
              const SizedBox(height: SizedSpace.sized_30),
              ButtonCustom(
                onTap: onTap,
                title: 'interviewees_selanjutnya',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
