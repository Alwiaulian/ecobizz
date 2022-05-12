import 'package:ecobiz_mobile_flutter/app/res/colors_data.dart';
import 'package:ecobiz_mobile_flutter/app/res/styles.dart';
import 'package:ecobiz_mobile_flutter/const/sized_border_radius.dart';
import 'package:ecobiz_mobile_flutter/const/sized_font_weight.dart';
import 'package:ecobiz_mobile_flutter/const/sized_margin_padding.dart';
import 'package:ecobiz_mobile_flutter/const/sized_space.dart';

import 'package:flutter/material.dart';

class NewBoxDescriptionSeminar extends StatelessWidget {
  final String title;
  final String date;
  final String dateBegin;
  final String dateEnd;
  final bool enableButtonJoin;
  const NewBoxDescriptionSeminar({
    Key? key,
    required this.title,
    required this.date,
    required this.dateBegin,
    required this.dateEnd,
    this.enableButtonJoin = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(SizedMarginPadding.sized_12),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius:
              BorderRadius.circular(SizedBorderRadius.borderRadiusButton)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyleHeading.textH7XXSmall.copyWith(
              fontWeight: SizedFontWeight.boldHeavy,
              color: ColorsCustom.othersColor.darkGrey10,
            ),
            // maxLines: 2,
            // overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: SizedSpace.sizedSmall),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 5),
                      child:  Icon(
                        Icons.access_time_filled,
                        size: 16,
                        color: ColorsCustom.othersColor.darkGrey300,
                      ),
                    ),
                    const SizedBox(width: SizedSpace.sizedVerySmall),
                    Text(
                      '1 jam yang lalu',
                      style: TextStyleCustom.textSmall.copyWith(
                        color: ColorsCustom.othersColor.darkGrey20,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
