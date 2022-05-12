import 'package:ecobiz_mobile_flutter/app/common_widget/rendering_ui_service/cache_network_image_custom.dart';
import 'package:ecobiz_mobile_flutter/app/res/path_image_icon.dart';
import 'package:ecobiz_mobile_flutter/const/enum.dart';
import 'package:flutter/material.dart';

class BoxFrameKabarKomunitas extends StatelessWidget {
  final String idImage;
  const BoxFrameKabarKomunitas({
    Key? key,
    required this.idImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CacheNetworkImageCustom(
        pathImageNotFound: PathImage.kabarKomunitas,
        borderRadius: 8,
        idImage: idImage,
        typeImage: TypeImage.Network,
      ),
    );
  }
}
