import 'package:ecobiz_mobile_flutter/app/common_widget/button_custom/button_custom.dart';
import 'package:ecobiz_mobile_flutter/app/res/colors_data.dart';
import 'package:ecobiz_mobile_flutter/app/res/styles.dart';
import 'package:ecobiz_mobile_flutter/const/sized_font_weight.dart';
import 'package:ecobiz_mobile_flutter/const/sized_space.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class InternalServerError extends StatelessWidget {
  final GestureTapCallback onTap;
  final String? textButton;
  const InternalServerError({
    Key? key,
    required this.onTap,
    this.textButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // const RenderSvgFile(pathImage: PathIlustrator.internalServerError),
          const SizedBox(height: SizedSpace.sizedVeryLarge),
          Text(
            'notif_handle_internal_server_error'.tr,
            style: TextStyleHeading.textH5Small.copyWith(
              color: ColorsCustom.othersColor.darkGrey20,
              fontWeight: SizedFontWeight.textExtraBold,
            ),
          ),
          const SizedBox(height: SizedSpace.sizedSuperMedium),
          Text(
            'notif_handle_ada_masalah_dengan_server'.tr,
            style: TextStyleParagraph.textParagraphDefault.copyWith(
              color: ColorsCustom.othersColor.darkGrey20,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: SizedSpace.sizedLightBig),
          ButtonCustom(
            onTap: onTap,
            title: (textButton == null) ? 'Coba Lagi' : textButton ?? "-",
          )
        ],
      ),
    );
  }
}
