
import 'package:ecobiz_mobile_flutter/app/res/path_fonts.dart';
import 'package:flutter/material.dart';
import 'package:ecobiz_mobile_flutter/const/enum.dart';
import 'package:google_fonts/google_fonts.dart';

class TextViewCustomOnTap extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final GestureTapCallback onTap;
  final double letterSpacing;
  final FontFamily fontFamily;
  final Color colorText;
  final double? heighText;
  const TextViewCustomOnTap({
    Key? key,
    this.text = '',
    this.fontSize = 14,
    this.letterSpacing = 0.4,
    this.fontWeight = FontWeight.normal,
    this.fontFamily = FontFamily.Poppins,
    this.colorText = Colors.black,
    this.heighText,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text,
        style: (fontFamily == FontFamily.Poppins)
            ? GoogleFonts.poppins(
                fontSize: fontSize,
                letterSpacing: letterSpacing,
                fontWeight: fontWeight,
                color: colorText,
              )
            : (fontFamily == FontFamily.OpenSans)
                ? GoogleFonts.openSans(
                    fontSize: fontSize,
                    letterSpacing: letterSpacing,
                    fontWeight: fontWeight,
                    color: colorText,
                  )
                : TextStyle(
                    height: heighText,
                    fontSize: fontSize,
                    letterSpacing: letterSpacing,
                    fontWeight: fontWeight,
                    color: colorText,
                    fontFamily: PathFonts.Averta,
                  ),
      ),
    );
  }
}
