import 'package:ecobiz_mobile_flutter/app/res/colors_data.dart';
import 'package:ecobiz_mobile_flutter/app/res/styles.dart';
import 'package:ecobiz_mobile_flutter/const/sized_border_radius.dart';
import 'package:ecobiz_mobile_flutter/const/sized_icons.dart';
import 'package:ecobiz_mobile_flutter/const/sized_margin_padding.dart';
import 'package:flutter/material.dart';

class TextFormStyleDefault extends StatelessWidget {
  final TextEditingController? formController;
  final Function(String)? onChange;
  final String title;
  final IconData? iconPrefix;
  final Widget? iconSuffix;
  final String hintText;
  final double marginTop;
  final GestureTapCallback? onTap;
  final bool readOnly;
  final bool autoValidate;
  final TextInputType textInputType;
  final String? Function(String?)? validatorForm;
  final int maxLines;
  final int minLines;
  final bool autoFocus;

  const TextFormStyleDefault({
    Key? key,
    this.formController,
    this.onChange,
    required this.title,
    this.iconPrefix,
    this.iconSuffix,
    this.marginTop = SizedMarginPadding.sized_24,
    required this.hintText,
    this.onTap,
    this.readOnly = false,
    this.autoValidate = false,
    this.textInputType = TextInputType.text,
    this.validatorForm,
    this.maxLines = 1,
    this.minLines = 1,
    this.autoFocus = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: marginTop),
      child: TextFormField(
        onChanged: onChange,
        controller: formController,
        cursorColor: ColorsCustom.colorGreen,
        onTap: onTap,
        readOnly: readOnly,
        keyboardType: textInputType,
        autovalidateMode: autoValidate
            ? AutovalidateMode.onUserInteraction
            : AutovalidateMode.disabled,
        autofocus: autoFocus,
        maxLines: maxLines,
        minLines: minLines,
        validator: validatorForm,
        decoration: InputDecoration(
          fillColor: Colors.white,
          hoverColor: Colors.white,
          filled: true,
          focusColor: Colors.white,
          hintText: hintText,
          contentPadding: const EdgeInsets.symmetric(
            vertical: SizedMarginPadding.sized_17,
            horizontal: SizedMarginPadding.sized_17,
          ),
          hintStyle: TextStyleCustom.textDefault,
          suffixIcon: iconSuffix,
          prefixIcon: (iconPrefix == null)
              ? null
              : Icon(
                  iconPrefix,
                  size: SizedIcons.sizedIconForm,
                  color: ColorsCustom.othersColor.darkGrey30,
                ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
                SizedBorderRadius.borderRadiusSuperSmallxx),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
                SizedBorderRadius.borderRadiusSuperSmallxx),
            borderSide: const BorderSide(
              color: ColorsCustom.colorOrange,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
                SizedBorderRadius.borderRadiusSuperSmallxx),
            borderSide: BorderSide(
              color: ColorsCustom.othersColor.darkGrey30,
            ),
          ),
        ),
      ),
    );
  }
}
