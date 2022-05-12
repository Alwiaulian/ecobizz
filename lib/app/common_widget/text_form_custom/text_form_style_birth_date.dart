import 'package:ecobiz_mobile_flutter/app/res/colors_data.dart';
import 'package:ecobiz_mobile_flutter/app/res/styles.dart';
import 'package:ecobiz_mobile_flutter/const/sized_font_weight.dart';
import 'package:ecobiz_mobile_flutter/const/sized_icons.dart';
import 'package:ecobiz_mobile_flutter/const/sized_margin_padding.dart';
import 'package:ecobiz_mobile_flutter/const/sized_space.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextFormStyleBirthDate extends StatelessWidget {
  final String title;
  final TextStyle styleTitle;
  final IconData? iconPrefix;
  final Widget? suffixIcon;

  final String hintText;
  final int maxLines;
  final int? minLines;
  final bool readOnly;
  final Color colorTitle;
  final TextEditingController? formController;
  final Function(String)? onChange;
  final String? Function(String?)? validatorForm;
  final GestureTapCallback? onTap;
  final TextInputType textInputType;

  const TextFormStyleBirthDate({
    Key? key,
    required this.title,
    required this.styleTitle,
    this.iconPrefix,
     this.suffixIcon,

    required this.hintText,
    this.maxLines = 1,
    this.minLines,
    required this.readOnly,
    this.colorTitle = ColorsCustom.textGrey,
    this.formController,
    this.onChange,
    this.validatorForm,
    this.onTap,
    this.textInputType = TextInputType.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: SizedMarginPadding.sized_24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: styleTitle,
          ),
          const SizedBox(height: SizedSpace.sizedNormalMedium),
          Container(child:  TextFormField(
              onChanged: onChange,
              maxLines: maxLines,
              minLines: minLines,
              onTap: onTap,
              readOnly: readOnly,
              controller: formController,
              cursorColor: ColorsCustom.colorGreen,
              validator: validatorForm,
              keyboardType: textInputType,
              decoration: InputDecoration(
                fillColor: Colors.white,
                hoverColor: Colors.white,
                // filled: true,
                focusColor: Colors.white,
                hintText: hintText,
                suffixIcon: suffixIcon,
                 enabledBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: ColorsCustom.othersColor.darkGrey100),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: ColorsCustom.darkGrey30),
                ),
                // contentPadding: const EdgeInsets.symmetric(
                //   vertical: SizedMarginPadding.sized_17,
                //   horizontal: SizedMarginPadding.sized_17,
                // ),
                hintStyle: TextStyleCustom.textSmall.copyWith(
                    fontWeight: SizedFontWeight.textLight,
                    color: ColorsCustom.othersColor.darkGrey300),

                prefixIcon: (iconPrefix == null)
                    ? null
                    : Icon(
                        iconPrefix,
                        size: SizedIcons.sizedIconForm,
                        color: ColorsCustom.othersColor.darkGrey30,
                        
                      ),
                // border: OutlineInputBorder(
                //   borderRadius: BorderRadius.circular(
                //       SizedBorderRadius.borderRadiusSuperSmallxx),
                // ),
                // focusedBorder: OutlineInputBorder(
                //   borderRadius: BorderRadius.circular(
                //       SizedBorderRadius.borderRadiusSuperSmallxx),
                //   borderSide: const BorderSide(color: ColorsCustom.colorOrange),
                // ),
                // enabledBorder: OutlineInputBorder(
                //   borderRadius: BorderRadius.circular(
                //       SizedBorderRadius.borderRadiusSuperSmallxx),
                //   borderSide: BorderSide(
                //     color: ColorsCustom.othersColor.darkGrey30,
                //   ),
                // ),
             
              ),
         
            ),
          ),
        ],
      ),
    );
  }
}
