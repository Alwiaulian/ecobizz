import 'package:ecobiz_mobile_flutter/app/res/colors_data.dart';
import 'package:ecobiz_mobile_flutter/app/res/styles.dart';
import 'package:ecobiz_mobile_flutter/const/sized_font_weight.dart';
import 'package:ecobiz_mobile_flutter/const/sized_margin_padding.dart';
import 'package:flutter/material.dart';

class TextFormStyleTitleCustom extends StatelessWidget {
  final String title;
  final TextStyle titleStyle;
  final IconData? iconPrefix;
  final Widget? iconSuffix;
  final String hintText;
  final int maxLines;
  final int? minLines;
  final Color colorTitle;
  final TextEditingController? formController;
  final Function(String)? onChange;
  final String? Function(String?)? validatorForm;
  final GestureTapCallback? onTap;
  final TextInputType textInputType;

  const TextFormStyleTitleCustom({
    Key? key,
    required this.title,
    required this.titleStyle,
    this.iconPrefix,
    this.iconSuffix,
    required this.hintText,

    this.maxLines = 1,
    this.minLines,
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
      margin: const EdgeInsets.only(
        top: SizedMarginPadding.sized_24,
      // bottom:  SizedMarginPadding.sized_20
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: titleStyle,
          ),
          // const SizedBox(height: SizedSpace.sizedSmall),
          Container(

            child: TextFormField(
              onChanged: onChange,
              maxLines: maxLines,
              minLines: minLines,
              onTap: onTap,
              controller: formController,
              cursorColor: ColorsCustom.textGrey,
              validator: validatorForm,
              keyboardType: textInputType,
              decoration: InputDecoration(
                fillColor: Colors.white,
                hoverColor: Colors.white,
                // filled: true,
                focusColor: Colors.white,
                hintText: hintText,
                enabledBorder: UnderlineInputBorder(      
                        borderSide: BorderSide(color: ColorsCustom.othersColor.darkGrey100),   
                        ),  
                focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: ColorsCustom.darkGrey30),
                     ),  
      
                hintStyle: TextStyleCustom.textSmall.copyWith(fontWeight: SizedFontWeight.textLight,color: ColorsCustom.othersColor.darkGrey300),
                suffixIcon: iconSuffix,
                // prefixIcon: (iconPrefix == null)
                //     ? null
                //     : Icon(
                //         iconPrefix,
                //         // size: SizedIcons.sizedIconForm,
                //         color: ColorsCustom.othersColor.darkGrey30,
                //       ),
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