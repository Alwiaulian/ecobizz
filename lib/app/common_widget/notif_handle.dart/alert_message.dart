
import 'package:ecobiz_mobile_flutter/app/common_widget/rendering_ui_service/render_svg_file.dart';
import 'package:ecobiz_mobile_flutter/app/res/colors_data.dart';
import 'package:ecobiz_mobile_flutter/app/res/styles.dart';
import 'package:ecobiz_mobile_flutter/const/sized_border_radius.dart';
import 'package:ecobiz_mobile_flutter/const/sized_margin_padding.dart';
import 'package:ecobiz_mobile_flutter/const/sized_space.dart';
import 'package:flutter/material.dart';

class AlertMessage {
  static Widget dialogWithoutContext(String message) {
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          // const RenderSvgFile(pathImage: PathIcon.icErrorSnackbar),
          const SizedBox(width: SizedSpace.sizedExtraMedium),
          Expanded(
            child: Text(
              message,
              style: TextStyleParagraph.textParagraphDefault.copyWith(
                color: ColorsCustom.othersColor.red40,
              ),
            ),
          ),
        ],
      ),
    );
  }

  AlertMessage.errorMessage(BuildContext ctx,
      {String message = '', int durationSnackbar = 3, bool onClose = true}) {
    ScaffoldMessenger.of(ctx).showSnackBar(
      SnackBar(
        content: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            // const RenderSvgFile(pathImage: PathIcon.icErrorSnackbar),
            const SizedBox(width: SizedSpace.sizedExtraMedium),
            Expanded(
              child: Text(
                message,
                style: TextStyleParagraph.textParagraphDefault.copyWith(
                  color: ColorsCustom.othersColor.red40,
                ),
              ),
            ),
            if (onClose)
              GestureDetector(
                onTap: () {
                  ScaffoldMessenger.of(ctx)
                      .hideCurrentSnackBar(reason: SnackBarClosedReason.action);
                },
                child: Container(
                  padding: const EdgeInsets.all(SizedMarginPadding.sized_4),
                  child: RenderSvgFile(
                      // pathImage: PathIcon.icCloseSnackbar,
                      colorAsset: ColorsCustom.othersColor.darkGrey30),
                ),
              )
          ],
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
                SizedBorderRadius.borderRadiusSuperSmallxx)),
        duration: Duration(seconds: durationSnackbar),
        elevation: 0,
        backgroundColor: ColorsCustom.othersColor.red10,
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  AlertMessage.warningMessage(BuildContext ctx,
      {String message = '', int durationSnackbar = 3, bool onClose = false}) {
    ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(
      content: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          // const RenderSvgFile(pathImage: PathIcon.icWarningSnackbar),
          const SizedBox(width: SizedSpace.sizedExtraMedium),
          Expanded(
            child: Text(
              message,
              style: TextStyleParagraph.textParagraphDefault.copyWith(
                color: ColorsCustom.othersColor.yellow40,
              ),
            ),
          ),
          if (onClose)
            GestureDetector(
              onTap: () {
                ScaffoldMessenger.of(ctx)
                    .hideCurrentSnackBar(reason: SnackBarClosedReason.action);
              },
              child: Container(
                padding: const EdgeInsets.all(SizedMarginPadding.sized_4),
                child: RenderSvgFile(
                    // pathImage: PathIcon.icCloseSnackbar,
                    colorAsset: ColorsCustom.othersColor.darkGrey30),
              ),
            )
        ],
      ),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
              SizedBorderRadius.borderRadiusSuperSmallxx)),
      duration: Duration(seconds: durationSnackbar),
      elevation: 0,
      backgroundColor: ColorsCustom.othersColor.yellow10,
      behavior: SnackBarBehavior.floating,
    ));
  }

  AlertMessage.successMessage(BuildContext ctx,
      {String message = '', int durationSnackbar = 3, bool onClose = false}) {
    ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(
      content: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          // const RenderSvgFile(pathImage: PathIcon.icSuccessSnackbar),
          const SizedBox(width: SizedSpace.sizedExtraMedium),
          Expanded(
            child: Text(
              message,
              style: TextStyleParagraph.textParagraphDefault.copyWith(
                color: ColorsCustom.othersColor.green40,
              ),
            ),
          ),
          if (onClose)
            GestureDetector(
              onTap: () {
                ScaffoldMessenger.of(ctx)
                    .hideCurrentSnackBar(reason: SnackBarClosedReason.action);
              },
              child: Container(
                padding: const EdgeInsets.all(SizedMarginPadding.sized_4),
                child: RenderSvgFile(
                    // pathImage: PathIcon.icCloseSnackbar,
                    colorAsset: ColorsCustom.othersColor.darkGrey30),
              ),
            )
        ],
      ),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
              SizedBorderRadius.borderRadiusSuperSmallxx)),
      duration: Duration(seconds: durationSnackbar),
      elevation: 0,
      backgroundColor: ColorsCustom.othersColor.green10,
      behavior: SnackBarBehavior.floating,
    ));
  }

  AlertMessage.infoMessage(BuildContext ctx,
      {String message = '', int durationSnackbar = 3, bool onClose = false}) {
    ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(
      content: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          // const RenderSvgFile(pathImage: PathIcon.icInfoSnackbar),
          const SizedBox(width: SizedSpace.sizedExtraMedium),
          Expanded(
            child: Text(
              message,
              style: TextStyleParagraph.textParagraphDefault.copyWith(
                color: ColorsCustom.othersColor.whiteGrey10,
              ),
            ),
          ),
          if (onClose)
            GestureDetector(
              onTap: () {
                ScaffoldMessenger.of(ctx)
                    .hideCurrentSnackBar(reason: SnackBarClosedReason.action);
              },
              child: Container(
                padding: const EdgeInsets.all(SizedMarginPadding.sized_4),
                child: RenderSvgFile(
                    // pathImage: PathIcon.icCloseSnackbar,
                    colorAsset: ColorsCustom.othersColor.darkGrey30),
              ),
            )
        ],
      ),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
              SizedBorderRadius.borderRadiusSuperSmallxx)),
      duration: Duration(seconds: durationSnackbar),
      elevation: 0,
      backgroundColor: ColorsCustom.othersColor.darkGrey20,
      behavior: SnackBarBehavior.floating,
    ));
  }
}
