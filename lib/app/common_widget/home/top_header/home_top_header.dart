
import 'package:ecobiz_mobile_flutter/app/res/colors_data.dart';
import 'package:ecobiz_mobile_flutter/app/res/styles.dart';
import 'package:ecobiz_mobile_flutter/const/sized_font.dart';
import 'package:ecobiz_mobile_flutter/const/sized_font_weight.dart';
import 'package:ecobiz_mobile_flutter/const/sized_general_widget.dart';
import 'package:ecobiz_mobile_flutter/const/sized_margin_padding.dart';
import 'package:flutter/material.dart';

class HomeTopHeader extends StatelessWidget {
  final Widget imageProfile;
  final String textSelamat;
  final String textUser;

  final GestureTapCallback onTap;
  const HomeTopHeader(
      {Key? key,
      required this.imageProfile,
      required this.onTap,
      required this.textSelamat,
      required this.textUser})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: SizedMarginPadding.sized_24,
        vertical: SizedMarginPadding.sized_24,
      ),
      width: double.infinity,
      height: SizedGeneralWidget.sizedHeightAppBar,
      // color: ColorsCustom.primaryColor.greengradient,
      color: ColorsCustom.othersColor.green400,

      // decoration: BoxDecoration(gradient: ColorsCustom.linearGradientHomeTop),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              // width: 92.83,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    textSelamat,
                    style: TextStyleCustom.textXSmall.copyWith(
                        fontSize: SizedFont.textSmallx,
                        fontWeight: SizedFontWeight.textLight,
                        color: ColorsCustom.textWhite),
                  ),
                  Text(
                textUser,
                style: TextStyleHeading.textH6XSmall.copyWith(
                    fontSize: SizedFont.textMediumxx,
                    fontWeight: SizedFontWeight.textBold,
                    color: ColorsCustom.textWhite),
              ),
                ],
              )),
          //NOTE: USER+NOTIF
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //NOTE: NOTIF
                // Container(
                //   child: IconButton(
                //     onPressed: onTap,
                //     icon: const Icon(Icons.notifications),
                //     iconSize: 24,
                //     color: ColorsCustom.othersColor.whiteGrey10,
                //   ),
                // ),
                //NOTE: USER
                Container(
                  width: 40,
                  height: 40,
                  child: imageProfile,
                ),
              ],
            ),
          ),
        
        ],
      ),
    );
  }
}
