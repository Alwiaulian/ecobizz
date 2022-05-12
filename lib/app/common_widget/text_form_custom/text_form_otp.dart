
import 'package:ecobiz_mobile_flutter/app/res/colors_data.dart';
import 'package:ecobiz_mobile_flutter/app/res/styles.dart';
import 'package:ecobiz_mobile_flutter/const/sized_font_weight.dart';
import 'package:ecobiz_mobile_flutter/const/sized_space.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFormOtp extends StatelessWidget {
  final TextEditingController form1;
  final TextEditingController form2;
  final TextEditingController form3;
  final TextEditingController form4;
  final TextEditingController form5;
  final TextEditingController form6;

  final GestureTapCallback onTap;
  final Color colorBorder;
  final Function() onChangeForm;

  TextFormOtp({
    Key? key,
    required this.form1,
    required this.form2,
    required this.form3,
    required this.form4,
    required this.form5,
    required this.form6,
    required this.onTap,
    this.colorBorder = ColorsCustom.colorGreen,
    required this.onChangeForm,
  }) : super(key: key);

  Widget textFormField(
    TextInputAction textInputAction,
    bool autoFocus,
    Function(String) onChange,
    TextEditingController controller,
    GestureTapCallback onTap,
    Color colorBorder,
  ) {
    return Container(
      child: TextFormField(
        
        cursorColor: ColorsCustom.colorGreen,
        style: GoogleFonts.openSans().copyWith(
          fontSize: 18,
          fontWeight: SizedFontWeight.textBold,
        ),
        onTap: onTap,
        controller: controller,
        autofocus: autoFocus,
        // maxLength: 1,
        onChanged: onChange,
        textInputAction: textInputAction,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
          decoration: InputDecoration(
              fillColor: Colors.white,
              hoverColor: Colors.white,
              counterText: "",
              // filled: true,
              focusColor: ColorsCustom.colorGreen,
              border:  UnderlineInputBorder(      
                      borderSide: BorderSide(color: ColorsCustom.othersColor.darkGrey200),   
                      ),  
                enabledBorder: UnderlineInputBorder(      
                      borderSide: BorderSide(color: ColorsCustom.othersColor.darkGrey200),   
                      ),  
              focusedBorder: UnderlineInputBorder(

                      borderSide: BorderSide(color: ColorsCustom.colorGreen),   
                   ),  
              // contentPadding: const EdgeInsets.symmetric(
              //   vertical: SizedMarginPadding.sized_17,
              //   horizontal: SizedMarginPadding.sized_17,
              // ),
                hintStyle: TextStyleCustom.textSmall.copyWith(fontWeight: SizedFontWeight.textLight,color: ColorsCustom.colorGreen),
              
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
          
        
        // decoration: InputDecoration(
        //   counterText: '',
        //   // contentPadding: const EdgeInsets.symmetric(vertical: 0),
        //   // fillColor: Colors.white,
        //   // hoverColor: Colors.white,
        //   filled: true,
        //   // focusColor: Colors.white,
        //   // border: OutlineInputBorder(
        //   //   borderRadius: BorderRadius.circular(
        //   //       SizedBorderRadius.borderRadiusSuperSmallxx),
        //   // ),
        //   // focusedBorder: OutlineInputBorder(
        //   //   borderRadius: BorderRadius.circular(
        //   //       SizedBorderRadius.borderRadiusSuperSmallxx),
        //   //   borderSide: const BorderSide(
        //   //     color: ColorsCustom.colorOrange,
        //   //   ),
        //   // ),
        //   // enabledBorder: OutlineInputBorder(
        //   //   borderRadius: BorderRadius.circular(
        //   //       SizedBorderRadius.borderRadiusSuperSmallxx),
        //   //   borderSide: BorderSide(
        //   //     color: colorBorder,
        //   //   ),
        //   // ),
        // ),
     
      ),
    );
  }

  // widget.autoDismissKeyboard) _focusNode!.unfocus()

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: textFormField(
              TextInputAction.next,
              true,
              (value) {
                if (value.length == 1) {
                  FocusScope.of(context).nextFocus();
                } else if (value.length == 0) {
                  FocusScope.of(context).unfocus();
                }
                onChangeForm();
              },
              form1,
              onTap,
              colorBorder,
            ),
          ),
          const SizedBox(width: SizedSpace.sizedSpaceTextFormOtp),
          Expanded(
            flex: 1,
            child: textFormField(
              TextInputAction.next,
              false,
              (value) {
                if (value.length == 1) {
                  FocusScope.of(context).nextFocus();
                } else if (value.length == 0) {
                  FocusScope.of(context).previousFocus();
                }
                onChangeForm();
              },
              form2,
              onTap,
              colorBorder,
            ),
          ),
          const SizedBox(width: SizedSpace.sizedSpaceTextFormOtp),
          Expanded(
            flex: 1,
            child: textFormField(
              TextInputAction.next,
              false,
              (value) {
                if (value.length == 1) {
                  FocusScope.of(context).nextFocus();
                } else if (value.length == 0) {
                  FocusScope.of(context).previousFocus();
                }
                onChangeForm();
              },
              form3,
              onTap,
              colorBorder,
            ),
          ),
          const SizedBox(width: SizedSpace.sizedSpaceTextFormOtp),
          Expanded(
            flex: 1,
            child: textFormField(
              TextInputAction.next,
              false,
              (value) {
                if (value.length == 1) {
                  FocusScope.of(context).nextFocus();
                } else if (value.length == 0) {
                  FocusScope.of(context).previousFocus();
                }
                onChangeForm();
              },
              form4,
              onTap,
              colorBorder,
            ),
          ),
          const SizedBox(width: SizedSpace.sizedSpaceTextFormOtp),
          Expanded(
            flex: 1,
            child: textFormField(
              TextInputAction.next,
              false,
              (value) {
                if (value.length == 1) {
                  FocusScope.of(context).nextFocus();
                } else if (value.length == 0) {
                  FocusScope.of(context).previousFocus();
                }
                onChangeForm();
              },
              form5,
              onTap,
              colorBorder,
            ),
          ),
          const SizedBox(width: SizedSpace.sizedSpaceTextFormOtp),
          Expanded(
            flex: 1,
            child: textFormField(
              TextInputAction.done,
              false,
              (value) {
                if (value.length == 1) {
                  FocusScope.of(context).unfocus();
                } else if (value.length == 0) {
                  FocusScope.of(context).previousFocus();
                }
                onChangeForm();
              },
              form6,
              onTap,
              colorBorder,
            ),
          ),
        ],
      ),
    );
  }
}
