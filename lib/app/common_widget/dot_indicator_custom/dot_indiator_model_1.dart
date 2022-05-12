import 'package:ecobiz_mobile_flutter/app/res/colors_data.dart';
import 'package:ecobiz_mobile_flutter/const/duration_animate.dart';
import 'package:ecobiz_mobile_flutter/const/sized_border_radius.dart';
import 'package:ecobiz_mobile_flutter/const/sized_width_height.dart';
import 'package:flutter/material.dart';

class DotIndicatorModel1 extends StatelessWidget {
  final int dataLength;
  final int currentPage;
  const DotIndicatorModel1({
    Key? key,
    this.dataLength = 0,
    this.currentPage = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List<Widget>.generate(
          dataLength,
          (int index) {
            return AnimatedContainer(
                duration:  Duration(
                    milliseconds: DurationAnimate.durationIndicator),
                height: SizedWidthHeight.dotIndicator,
                width:
                    (index == currentPage) ? 8 : SizedWidthHeight.dotIndicator,
                margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 30),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        SizedBorderRadius.borderRadiusSuperSmallxx),
                    color: (index == currentPage)
                        ? ColorsCustom.primaryColor.green
                        : Colors.grey.withOpacity(0.5)));
          },
        ),
      ),
    );
  }
}
