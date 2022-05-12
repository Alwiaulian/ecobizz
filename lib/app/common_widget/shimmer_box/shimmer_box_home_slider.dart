
import 'package:ecobiz_mobile_flutter/app/res/colors_data.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerBoxHomeSlider extends StatelessWidget {
  const ShimmerBoxHomeSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Shimmer.fromColors(
        baseColor: ColorsCustom.othersColor.darkGrey40,
        highlightColor: ColorsCustom.textWhite,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(16, 0, 16, 0),
              padding:
                  const EdgeInsets.symmetric(vertical: 70, horizontal: 130),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: ColorsCustom.othersColor.darkGrey40,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 8,
                  height: 8,
                  margin: const EdgeInsets.only(top: 16, right: 8),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark
                        ? ColorsCustom.othersColor.darkGrey40
                        : ColorsCustom.othersColor.whiteGrey40),
                  ),
                ),
                Container(
                  width: 8,
                  height: 8,
                  margin: const EdgeInsets.only(top: 16, left: 8, right: 8),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: (Theme.of(context).brightness == Brightness.dark
                          ? ColorsCustom.othersColor.darkGrey40
                          : ColorsCustom.othersColor.whiteGrey40)),
                ),
                Container(
                  width: 8,
                  height: 8,
                  margin: const EdgeInsets.only(top: 16, left: 8, right: 8),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: (Theme.of(context).brightness == Brightness.dark
                          ? ColorsCustom.othersColor.darkGrey40
                          : ColorsCustom.othersColor.whiteGrey40)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
