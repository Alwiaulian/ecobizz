import 'package:ecobiz_mobile_flutter/app/res/colors_data.dart';
import 'package:ecobiz_mobile_flutter/app/res/styles.dart';
import 'package:ecobiz_mobile_flutter/const/sized_font_weight.dart';
import 'package:ecobiz_mobile_flutter/const/sized_icons.dart';
import 'package:ecobiz_mobile_flutter/const/sized_margin_padding.dart';
import 'package:ecobiz_mobile_flutter/const/sized_space.dart';
import 'package:flutter/material.dart';

class TextFormStyleTitlePassword extends StatelessWidget {
  final TextEditingController? formController;
  final Function(String)? onChange;
  final String title;
  final TextStyle styleTitle;
  final IconData? iconPrefix;
  final String hintText;
  final double marginTop;
  final GestureTapCallback? onTap;
  final bool readOnly;
  final bool autoValidate;
  final String obsecuringCharacter;
  final Widget suffixIcon;
  final bool obsecureText;
  final TextInputType textInputType;
  final String? Function(String?)? validatorForm;

  const TextFormStyleTitlePassword({
    Key? key,
    this.formController,
    this.onChange,
    required this.title,
    required this.styleTitle,
    this.iconPrefix,
    this.marginTop = SizedMarginPadding.sized_24,
    required this.hintText,
    this.onTap,
    this.readOnly = false,
    this.autoValidate = false,
    this.obsecuringCharacter = '*',
    required this.suffixIcon,
    this.obsecureText = true,
    this.textInputType = TextInputType.text,
    this.validatorForm,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: marginTop),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: styleTitle,
          ),
          const SizedBox(height: SizedSpace.sizedNormalMedium),
          TextFormField(
            onChanged: onChange,
            controller: formController,
            maxLength: 50,
            cursorColor: ColorsCustom.textGrey,
            onTap: onTap,
            readOnly: readOnly,
            obscureText: obsecureText,
            keyboardType: textInputType,
            autovalidateMode: autoValidate
                ? AutovalidateMode.onUserInteraction
                : AutovalidateMode.disabled,
            obscuringCharacter: obsecuringCharacter,
            validator: validatorForm,
            decoration: InputDecoration(
              fillColor: Colors.white,
              hoverColor: Colors.white,
              counterText: "",
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
              //   borderSide: const BorderSide(
              //     color: ColorsCustom.colorOrange,
              //   ),
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
        ],
      ),
    );
  }
}
