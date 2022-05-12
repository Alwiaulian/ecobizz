import 'package:ecobiz_mobile_flutter/app/res/colors_data.dart';
import 'package:ecobiz_mobile_flutter/app/res/styles.dart';
import 'package:ecobiz_mobile_flutter/const/sized_font.dart';
import 'package:ecobiz_mobile_flutter/const/sized_heading_text.dart';
import 'package:flutter/material.dart';

import 'package:get/get_utils/src/extensions/internacionalization.dart';

class RadioButtonProfessionnoTitle extends StatelessWidget {
  final int selected;
  final Function(int?) onChange;
  final GestureTapCallback onTapEmployee;
  final GestureTapCallback onTapStudent;
  const RadioButtonProfessionnoTitle({
    Key? key,
    required this.selected,
    required this.onChange,
    required this.onTapEmployee,
    required this.onTapStudent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: <Widget>[
              GestureDetector(
                onTap: onTapEmployee,
                child: Container(
                  child: Row(
                    children: [
                      Radio(
                        activeColor: ColorsCustom.colorGreen,
                        value: 0,
                        groupValue: selected,
                        onChanged: onChange,
                      ),
                      Transform.translate(
                        offset: const Offset(-5, 0),
                        child: Text(
                          "Lelaki".tr,
                          style: TextStyleCustom.textSmall.copyWith(
                              fontSize: SizedFont.textMedium,
                              height:
                                  SizedHeightSpacingText.sizedHeightSpacing_24,
                              color: ColorsCustom.textcolorDark),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 16),
              GestureDetector(
                onTap: onTapStudent,
                child: Container(
                  child: Row(
                    children: [
                      Radio(
                        activeColor: ColorsCustom.colorGreen,
                        value: 1,
                        groupValue: selected,
                        onChanged: onChange,
                      ),
                      Transform.translate(
                        offset: const Offset(-5, 0),
                        child: Text(
                          "Perempuan".tr,
                          style: TextStyleCustom.textSmall.copyWith(
                              fontSize: SizedFont.textMedium,
                              height:
                                  SizedHeightSpacingText.sizedHeightSpacing_24,
                              color: ColorsCustom.textcolorDark),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
