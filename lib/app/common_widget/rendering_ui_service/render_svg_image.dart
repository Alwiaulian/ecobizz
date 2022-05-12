import 'package:ecobiz_mobile_flutter/app/res/path_image_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RenderSvgImage extends StatelessWidget {
  final String pathImage;
  final double? width;
  final double? height;
  final Color? colorAsset;
  final BoxFit fitImage;
  const RenderSvgImage({
    Key? key,
    this.pathImage = '',
    this.width,
    this.height,
    this.colorAsset,
    this.fitImage = BoxFit.contain,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    try {
      return Container(
        child: SvgPicture.network(
          pathImage,
          color: colorAsset,
          height: height,
          width: width,
          fit: fitImage,
          placeholderBuilder: (context) {
            return Image.asset(
              PathImage.imageNotFound,
              fit: fitImage,
            );
          },
        ),
      );
    } catch (e) {
      return Image.asset(
        PathImage.imageNotFound,
        fit: fitImage,
      );
    }
  }
}
