import 'package:ecobiz_mobile_flutter/app/common_widget/rendering_ui_service/render_svg_file.dart';
import 'package:ecobiz_mobile_flutter/app/res/colors_data.dart';
import 'package:ecobiz_mobile_flutter/app/res/styles.dart';
import 'package:ecobiz_mobile_flutter/const/sized_space.dart';
import 'package:flutter/material.dart';


class BoxTypeCategory extends StatelessWidget {
  final String categoryName;
  final String svgFile;
  final BoxConstraints? constraintsMaxWidthText;
  const BoxTypeCategory({
    Key? key,
    required this.categoryName,
    required this.svgFile,
    this.constraintsMaxWidthText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: ColorsCustom.boxTypeCategory,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 6,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          RenderSvgFile(
            pathImage: svgFile,
            width: 16,
            height: 16,
          ),
          const SizedBox(width: SizedSpace.sizedVerySmall),
          Container(
            constraints: constraintsMaxWidthText,
            child: Text(
              categoryName,
              style: TextStyleCustom.textSmall.copyWith(
                color: ColorsCustom.darkTurqoise,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
        ],
      ),
    );
  }
}
