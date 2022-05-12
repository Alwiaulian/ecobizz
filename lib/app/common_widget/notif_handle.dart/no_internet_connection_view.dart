import 'package:ecobiz_mobile_flutter/app/common_widget/button_custom/button_custom.dart';
import 'package:ecobiz_mobile_flutter/app/res/colors_data.dart';
import 'package:ecobiz_mobile_flutter/app/res/styles.dart';
import 'package:ecobiz_mobile_flutter/const/sized_font_weight.dart';
import 'package:ecobiz_mobile_flutter/const/sized_margin_padding.dart';
import 'package:ecobiz_mobile_flutter/const/sized_space.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class NoInternetConnectionView extends StatelessWidget {
  final GestureTapCallback onTap;
  final bool showLoading;
  const NoInternetConnectionView({
    Key? key,
    required this.onTap,
    required this.showLoading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: SizedMarginPadding.sizedMarginPaddingLayoutWidth,
        vertical: SizedMarginPadding.sized_40,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // const RenderSvgFile(pathImage: PathIlustrator.noInternetConnection),
          const SizedBox(height: SizedSpace.sizedVeryLarge),
          Text(
            'lost_connection_koneksi_jaringan_terputus'.tr,
            style: TextStyleHeading.textH5Small.copyWith(
              color: ColorsCustom.othersColor.darkGrey20,
              fontWeight: SizedFontWeight.textExtraBold,
            ),
          ),
          const SizedBox(height: SizedSpace.sizedSuperMedium),
          Text(
            'lost_connection_periksa_jaringan_internet_anda'.tr,
            style: TextStyleParagraph.textParagraphDefault.copyWith(
              color: ColorsCustom.othersColor.darkGrey20,
            ),
          ),
          const SizedBox(height: SizedSpace.sizedLightBig),
          ButtonCustom(
            showLoading: showLoading,
            onTap: onTap,
            title: 'lost_connection_coba_lagi',
          )
        ],
      ),
    );
  }
}
