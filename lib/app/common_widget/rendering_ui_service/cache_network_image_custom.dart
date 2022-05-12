import 'dart:io';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecobiz_mobile_flutter/app/common_widget/rendering_ui_service/render_svg_image.dart';
import 'package:ecobiz_mobile_flutter/app/res/path_image_icon.dart';
import 'package:ecobiz_mobile_flutter/const/enum.dart';
import 'package:ecobiz_mobile_flutter/middleware/extension/string_extension.dart';
import 'package:ecobiz_mobile_flutter/services/utils/formatter.dart';
import 'package:flutter/material.dart';

class CacheNetworkImageCustom extends StatelessWidget {
  final double borderRadius;
  final String idImage;
  final int? widthImage;
  final TypeImage typeImage;
  final BorderRadius? borderRadiusCustomSet;
  final bool borderRadiusCustom;
  final BoxFit boxfit;
  final String pathImageNotFound;
  const CacheNetworkImageCustom({
    Key? key,
    this.borderRadius = 0,
    this.borderRadiusCustomSet,
    required this.idImage,
    this.widthImage = 20,
    required this.typeImage,
    this.borderRadiusCustom = false,
    this.boxfit = BoxFit.cover,
    this.pathImageNotFound = PathImage.imageNotFound,
  }) : super(key: key);

  Widget decisionImage(TypeImage typeImage) {
    return Builder(builder: (context) {
      switch (typeImage) {
        case TypeImage.File:
          return Image.file(
            File(idImage),
            fit: boxfit,
            errorBuilder: (context, error, stackTrace) {
              return Image.asset(
                pathImageNotFound,
                fit: boxfit,
              );
            },
          );
        case TypeImage.NetworkSvg:
          return RenderSvgImage(
            pathImage: Formatter.getInstance
                .formatterValidLinkImageFix(idImage, widthImage!),
            fitImage: boxfit,
          );
        case TypeImage.Network:
          return CachedNetworkImage(
            imageUrl: Formatter.getInstance
                .formatterValidLinkImageFix(idImage, widthImage!),
            fit: boxfit,
            fadeOutDuration: const Duration(milliseconds: 10),
            fadeInDuration: const Duration(milliseconds: 10),
            errorWidget: (context, url, error) {
              return Image.asset(
                pathImageNotFound,
                fit: boxfit,
              );
            },
          );
        case TypeImage.NetworkFullPath:
          return CachedNetworkImage(
            imageUrl: idImage.replaceSpace,
            fit: boxfit,
            fadeOutDuration: const Duration(milliseconds: 10),
            fadeInDuration: const Duration(milliseconds: 10),
            errorWidget: (context, url, error) {
              return Image.asset(
                pathImageNotFound,
                fit: boxfit,
              );
            },
          );
        case TypeImage.Assets:
          return Image.asset(
            idImage,
            fit: boxfit,
            errorBuilder: (context, error, stackTrace) {
              return Image.asset(
                pathImageNotFound,
                fit: boxfit,
              );
            },
          );
        // return Image.network(
        //   Formatter.getInstance.formatterValidLinkImage(idImage),
        //   fit: boxfit,
        //   errorBuilder: (context, error, stackTrace) {
        //     return Image.asset(
        //       pathImageNotFound,
        //       fit: boxfit,
        //     );
        //   },
        // );
        default:
          return Image.asset(
            pathImageNotFound,
            fit: boxfit,
          );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      child: ClipRRect(
        borderRadius: (borderRadiusCustom)
            ? borderRadiusCustomSet
            : BorderRadius.circular(borderRadius),
        child: decisionImage(typeImage),
      ),
    );
  }
}
