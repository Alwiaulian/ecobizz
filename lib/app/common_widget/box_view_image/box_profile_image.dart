import 'package:ecobiz_mobile_flutter/app/common_widget/rendering_ui_service/cache_network_image_custom.dart';
import 'package:ecobiz_mobile_flutter/app/res/colors_data.dart';
import 'package:ecobiz_mobile_flutter/app/res/path_image_icon.dart';
import 'package:ecobiz_mobile_flutter/const/enum.dart';
import 'package:ecobiz_mobile_flutter/const/sized_border_radius.dart';
import 'package:ecobiz_mobile_flutter/const/sized_general_widget.dart';
import 'package:ecobiz_mobile_flutter/const/sized_margin_padding.dart';
import 'package:flutter/material.dart';

class BoxProfileImage extends StatelessWidget {
  final bool isFromFile;
  final GestureTapCallback onTap;
  final String idImage;
  const BoxProfileImage({
    Key? key,
    required this.isFromFile,
    required this.onTap,
    required this.idImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.only(top: SizedMarginPadding.sized_100),

      child: Center(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: ColorsCustom.textWhite,
                  width: 3,
                ),
              ),
              width: SizedGeneralWidget.sizedCircleAvatar,
              height: SizedGeneralWidget.sizedCircleAvatar,
              child: CacheNetworkImageCustom(
                idImage: idImage,
                borderRadius: SizedBorderRadius.borderRadiusRounded,
                typeImage: (isFromFile) ? TypeImage.File : TypeImage.Network,
                pathImageNotFound: PathImage.imageNotFoundAvatar,
                widthImage: 200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
