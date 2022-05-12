// ignore_for_file: must_be_immutable

import 'package:ecobiz_mobile_flutter/app/common_widget/button_custom/button_custom.dart';
import 'package:ecobiz_mobile_flutter/app/common_widget/text_form_custom/text_form_style_title_custom.dart';
import 'package:ecobiz_mobile_flutter/app/mixin_function_helper/decision_size.dart';
import 'package:ecobiz_mobile_flutter/app/res/colors_data.dart';
import 'package:ecobiz_mobile_flutter/app/res/styles.dart';
import 'package:ecobiz_mobile_flutter/const/sized_border_radius.dart';
import 'package:ecobiz_mobile_flutter/const/sized_font_weight.dart';
import 'package:ecobiz_mobile_flutter/const/sized_margin_padding.dart';
import 'package:ecobiz_mobile_flutter/const/sized_space.dart';
import 'package:ecobiz_mobile_flutter/middleware/extension/string_extension.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/after_register_2_controller.dart';

class AfterRegister2View extends GetView<AfterRegister2Controller>
    with DecisionSize {
  final String? username;

  String? _valStatus;

  String? _valStatusRencies;
  String? selectedValue = null;

  final bool? isObscure;

  AfterRegister2View({
    this.username,
    this.isObscure,
  });
  final List<String> data = ["a", "b", "c"];
  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("USA"), value: "USA"),
      DropdownMenuItem(child: Text("Canada"), value: "Canada"),
      DropdownMenuItem(child: Text("Brazil"), value: "Brazil"),
      DropdownMenuItem(child: Text("England"), value: "England"),
    ];
    return menuItems;
  }

  get password => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      color: ColorsCustom.textWhite,
      child: Container(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  color: ColorsCustom.textWhite,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: SizedSpace.sized_70,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24,
                        ),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () => controller.backToLoginOnChange(),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: const Icon(Icons.arrow_back,
                                    color: ColorsCustom.colorGreen),
                              ),
                            ),
                            SizedBox(
                              width: SizedMarginPadding.sized_12,
                            ),
                            Text(
                              'Lengkapi Data Diri Kamu',
                              style: TextStyleHeading.textH5Small.copyWith(
                                fontWeight: SizedFontWeight.textBold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 60,
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: SizedSpace.sizedSmall,
                            ),
                            Text(
                              'Silahkan melengkapi profil kamu dahulu',
                              style: TextStyleCustom.textDefault.copyWith(
                                  color: ColorsCustom.othersColor.darkgrey60),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: SizedSpace.sizedLarge,
                      ),
                      Row(children: <Widget>[
                        Expanded(
                          child: new Container(
                              margin:
                                  const EdgeInsets.only(left: 0.0, right: 0.0),
                              child: Divider(
                                thickness: 2.5,
                                color: ColorsCustom.colorGreen,
                                height: 36,
                              )),
                        ),
                        Expanded(
                          child: new Container(
                              margin:
                                  const EdgeInsets.only(left: 0.0, right: 0.0),
                              child: Divider(
                                thickness: 2.5,
                                color: ColorsCustom.colorGreen,
                                height: 36,
                              )),
                        ),
                        Expanded(
                          child: new Container(
                              margin:
                                  const EdgeInsets.only(left: 0.0, right: 0.0),
                              child: Divider(
                                thickness: 2.5,
                                color: ColorsCustom.othersColor.whiteGrey40,
                                height: 36,
                              )),
                        ),
                        // Text("OR"),
                        Expanded(
                          child: new Container(
                              margin:
                                  const EdgeInsets.only(left: 0.0, right: 0.0),
                              child: Divider(
                                thickness: 2.5,
                                color: ColorsCustom.othersColor.whiteGrey40,
                                height: 36,
                              )),
                        ),
                      ]),
                      Form(
                          child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 24, vertical: 16),
                            child: Column(
                              children: [
                                Form(
                                    child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Provinsi',
                                      style:
                                          TextStyleCustom.textDefault.copyWith(
                                        fontWeight: SizedFontWeight.textLight,
                                        fontSize: SizedSpace.sizedExtraMedium,
                                        color:
                                            ColorsCustom.othersColor.darkgrey70,
                                      ),
                                    ),
                                    Obx(
                                      () => DropdownButtonFormField<String>(
                                        value: _valStatus,
                                        enableFeedback: true,
                                        // value: 'AAAAA',
                                        decoration: InputDecoration(
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: ColorsCustom
                                                    .othersColor.darkGrey100),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: ColorsCustom.darkGrey30),
                                          ),
                                          hintText: 'Silahkan pilih provinsi ',
                                          hintStyle: TextStyleCustom.textSmall
                                              .copyWith(
                                                  fontWeight:
                                                      SizedFontWeight.textLight,
                                                  color: ColorsCustom
                                                      .othersColor.darkGrey300),
                                          // hintTextDirection:
                                        ),
                                        icon: Icon(
                                          Icons.search,
                                          size: 18.0,
                                          color: ColorsCustom
                                              .othersColor.darkGrey30,
                                        ),
                                        items: controller.dataProvinces?.value
                                            .map((value) {
                                          return DropdownMenuItem<String>(
                                            value: value.name,
                                            child: Text(value.name),
                                          );
                                        }).toList(),

                                        onChanged: (newValue) {
                                          // setState(() {
                                          // controller.dataCategory?.value = newValue;
                                          // });
                                        },
                                      ),
                                    ),
                                    SizedBox(
                                      height: SizedMarginPadding.sized_24,
                                    ),
                                    Text(
                                      'Kota/Kabupaten',
                                      style:
                                          TextStyleCustom.textDefault.copyWith(
                                        fontWeight: SizedFontWeight.textLight,
                                        fontSize: SizedSpace.sizedExtraMedium,
                                        color:
                                            ColorsCustom.othersColor.darkgrey70,
                                      ),
                                    ),
                                    Obx(
                                      () => DropdownButtonFormField<String>(
                                        value: _valStatusRencies,
                                        enableFeedback: true,
                                        // value: 'AAAAA',
                                        decoration: InputDecoration(
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: ColorsCustom
                                                    .othersColor.darkGrey100),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: ColorsCustom.darkGrey30),
                                          ),
                                          hintText: 'Silahkan pilih kota/kabupaten ',
                                          hintStyle: TextStyleCustom.textSmall
                                              .copyWith(
                                                  fontWeight:
                                                      SizedFontWeight.textLight,
                                                  color: ColorsCustom
                                                      .othersColor.darkGrey300),
                                          // hintTextDirection:
                                        ),
                                        icon: Icon(
                                          Icons.search,
                                          size: 18.0,
                                          color: ColorsCustom
                                              .othersColor.darkGrey30,
                                        ),
                                        items: controller.dataRegencies?.value
                                            .map((value) {
                                          return DropdownMenuItem<String>(
                                            value: value.name,
                                            child: Text(value.name),
                                          );
                                        }).toList(),

                                        onChanged: (newValue) {
                                          // setState(() {
                                          // controller.dataCategory?.value = newValue;
                                          // });
                                        },
                                      ),
                                    ),
                                    SizedBox(
                                      height: SizedMarginPadding.sized_24,
                                    ),
                                    Text(
                                      'Kecamatan',
                                      style:
                                          TextStyleCustom.textDefault.copyWith(
                                        fontWeight: SizedFontWeight.textLight,
                                        fontSize: SizedSpace.sizedExtraMedium,
                                        color:
                                            ColorsCustom.othersColor.darkgrey70,
                                      ),
                                    ),
                                    DropdownButtonFormField(
                                        // value: 'AAAAA',
                                        decoration: InputDecoration(
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: ColorsCustom
                                                    .othersColor.darkGrey100),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: ColorsCustom.darkGrey30),
                                          ),
                                          hintText: 'Pilih kecamatan',
                                          hintStyle: TextStyleCustom.textSmall
                                              .copyWith(
                                                  fontWeight:
                                                      SizedFontWeight.textLight,
                                                  color: ColorsCustom
                                                      .othersColor.darkGrey300),
                                        ),
                                        icon: Icon(
                                          Icons.search,
                                          color: ColorsCustom.textGrey,
                                          size: 20.09,
                                        ),
                                        validator: (value) => value == null
                                            ? "Select a country"
                                            : null,
                                        onChanged: (String? newValue) {
                                          setState(() {
                                            selectedValue = newValue!;
                                          });
                                        },
                                        items: dropdownItems),
                                    SizedBox(
                                      height: SizedMarginPadding.sized_24,
                                    ),
                                    Text(
                                      'Desa/Kelurahan',
                                      style:
                                          TextStyleCustom.textDefault.copyWith(
                                        fontWeight: SizedFontWeight.textLight,
                                        fontSize: SizedSpace.sizedExtraMedium,
                                        color:
                                            ColorsCustom.othersColor.darkgrey70,
                                      ),
                                    ),
                                    DropdownButtonFormField(
                                        enableFeedback: true,
                                        // value: 'AAAAA',
                                        decoration: InputDecoration(
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: ColorsCustom
                                                    .othersColor.darkGrey100),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: ColorsCustom.darkGrey30),
                                          ),
                                          hintText: 'pilih desa',
                                          hintStyle: TextStyleCustom.textSmall
                                              .copyWith(
                                                  fontWeight:
                                                      SizedFontWeight.textLight,
                                                  color: ColorsCustom
                                                      .othersColor.darkGrey300),
                                          // hintTextDirection:
                                        ),
                                        icon: Icon(
                                          Icons.search,
                                          color: ColorsCustom.textGrey,
                                          size: 20.09,
                                        ),
                                        validator: (value) => value == null
                                            ? "Select a country"
                                            : null,
                                        onChanged: (String? newValue) {
                                          setState(() {
                                            selectedValue = newValue!;
                                          });
                                        },
                                        items: dropdownItems),
                                    TextFormStyleTitleCustom(
                                      hintText: 'Masukan alamat lengkap',
                                      title: 'Alamat',
                                      titleStyle:
                                          TextStyleCustom.textDefault.copyWith(
                                        fontWeight: SizedFontWeight.textLight,
                                        fontSize: SizedSpace.sizedExtraMedium,
                                        color:
                                            ColorsCustom.othersColor.darkgrey70,
                                      ),
                                      // textInputType: TextInputType.emailAddress,
                                      // iconPrefix: Icons.email,
                                      // formController: controller.formEmail.value,
                                      validatorForm: (value) {
                                        if (value!.isFormEmpty)
                                          return "Email Tidak Boleh Kosong";
                                        else if (!value.isValidEmail)
                                          return "Email Harus Benar";
                                        return null;
                                      },
                                    ),
                                    const SizedBox(height: SizedSpace.sized_30),
                                  ],
                                ))
                              ],
                            ),
                          ),
                        ],
                      )),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              decoration:
                  BoxDecoration(color: ColorsCustom.textWhite, boxShadow: [
                BoxShadow(
                  color: ColorsCustom.textWhite.withOpacity(0.5),
                  blurRadius: 0.0,
                  offset: Offset(
                    -0,
                    -4,
                  ),
                ),
                BoxShadow(
                  color: ColorsCustom.othersColor.whiteGrey50.withOpacity(0.5),
                  // spreadRadius: -10,
                  blurRadius: 3.0,
                  offset: Offset(
                    -0,
                    -4,
                  ),
                ),
              ]),
              padding: EdgeInsets.symmetric(
                  horizontal: SizedMarginPadding.sizedMarginPaddingLayoutWidth,
                  vertical: SizedMarginPadding.sizedMarginPaddingLayoutWidth),
              margin: EdgeInsets.symmetric(
                vertical: SizedMarginPadding.sized_24,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: SizedMarginPadding.sized_10,
                    horizontal: SizedMarginPadding.sized_10),
                child: Column(
                  children: [
                    ButtonCustom(
                      onTap: () => {controller.goToRegister3()},
                      title: 'Lanjutkan',
                      borderRadius: SizedBorderRadius.borderRadiusSmall,
                      colorBackground: ColorsCustom.primaryColor.green,
                    ),
                    SizedBox(
                      height: SizedMarginPadding.sized_20,
                    ),
                    Text(
                      'Lengkapi Nanti',
                      style: TextStyleHeading.textH6XSmall
                          .copyWith(color: ColorsCustom.textGrey),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }

  void setState(Null Function() param0) {}
}
