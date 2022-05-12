// ignore_for_file: must_be_immutable

import 'package:ecobiz_mobile_flutter/app/common_widget/button_custom/button_custom.dart';
import 'package:ecobiz_mobile_flutter/app/common_widget/radio_button/radio_button_profession_noTitle.dart';
import 'package:ecobiz_mobile_flutter/app/common_widget/text_form_custom/text_form_style_birth_date.dart';
import 'package:ecobiz_mobile_flutter/app/common_widget/text_form_custom/text_form_style_title_custom.dart';
import 'package:ecobiz_mobile_flutter/app/mixin_function_helper/decision_size.dart';
import 'package:ecobiz_mobile_flutter/app/res/colors_data.dart';
import 'package:ecobiz_mobile_flutter/app/res/styles.dart';
import 'package:ecobiz_mobile_flutter/const/enum.dart';
import 'package:ecobiz_mobile_flutter/const/sized_border_radius.dart';
import 'package:ecobiz_mobile_flutter/const/sized_font_weight.dart';
import 'package:ecobiz_mobile_flutter/const/sized_margin_padding.dart';
import 'package:ecobiz_mobile_flutter/const/sized_space.dart';
import 'package:ecobiz_mobile_flutter/data/model/request/after_register_request.dart';
import 'package:ecobiz_mobile_flutter/middleware/extension/string_extension.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/after_register_1_controller.dart';

class AfterRegister1View extends GetView<AfterRegister1Controller>
    with DecisionSize {
  final String? username;

  String? selectedValue = null;

  String? _valStatus;

  String dropdownValue = 'One';
  final bool? isObscure;
  AfterRegister1View({this.username, this.isObscure});
  // List<DropdownMenuItem<dynamic>>? get dropdownItems {
  //   // ignore: invalid_use_of_protected_member
  //   List<DropdownMenuItem<dynamic>>? menuItems = controller.dataCategory?.value.map(
  //       (data) => DropdownMenuItem(
  //               child: Text(data.category_name), value: '${data.category_name}')
  //   ).toList();
  //   // DropdownMenuItem(child: Text("USA"), value: "USA"),
  //   // DropdownMenuItem(child: Text("Canada"), value: "Canada"),
  //   // DropdownMenuItem(child: Text("Brazil"), value: "Brazil"),
  //   // DropdownMenuItem(child: Text("England"), value: "England"),

  //   return menuItems;
  // }

  get password => null;
  Gender? _gender = Gender.Male;

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
                          horizontal: 16,
                        ),
                        child: Row(
                          children: [
                            // GestureDetector(
                            //   onTap: () => controller.backToLoginOnChange(),
                            //   child: Align(
                            //     alignment: Alignment.centerLeft,
                            //     child: const Icon(Icons.arrow_back,
                            //         color: ColorsCustom.colorGreen),
                            //   ),
                            // ),
                            SizedBox(
                              width: SizedMarginPadding.sized_12,
                            ),
                            InkWell(
                              onTap: () => controller.getCategorUsers(),
                              child: Text(
                                'Lengkapi Data Diri Kamu',
                                style: TextStyleHeading.textH5Small.copyWith(
                                  fontWeight: SizedFontWeight.textBold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 28,
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: SizedSpace.sizedSmall,
                            ),
                            Text(
                              'Silahkan melengkapi profil kamu dahulu',
                              style: TextStyleCustom.textDefault.copyWith(
                                  color: ColorsCustom.othersColor.grey600,
                                  fontWeight: SizedFontWeight.textLight),
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
                                color: ColorsCustom.othersColor.whiteGrey40,
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
                          child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 16),
                        child: Column(
                          children: [
                            TextFormStyleTitleCustom(
                              hintText: 'Masukan nama lengkap',

                              // hintTextStyle: TextStyleCustom.textSmall.copyWith(color: ColorsCustom.othersColor.darkGrey300).copyWith(fontWeight:SizedFontWeight.textLight),
                              title: 'NIK (Nomor Induk Keluarga)',
                              titleStyle: TextStyleCustom.textDefault.copyWith(
                                fontWeight: SizedFontWeight.textLight,
                                fontSize: SizedSpace.sizedExtraMedium,
                                color: ColorsCustom.othersColor.darkgrey70,
                              ),
                              // textInputType: TextInputType.emailAddress,
                              // iconPrefix: Icons.email,
                              // formController: controller.formEmail.value,
                              formController: controller.formNip,
                              validatorForm: (value) {
                                if (value!.isFormEmpty)
                                  return "Email Tidak Boleh Kosong";
                                else if (!value.isValidEmail)
                                  return "Email Harus Benar";
                                return null;
                              },
                            ),
                            TextFormStyleTitleCustom(
                              hintText: 'Masukan nama lengkap',
                              title: 'Nama Lengkap',
                              titleStyle: TextStyleCustom.textDefault.copyWith(
                                fontWeight: SizedFontWeight.textLight,
                                fontSize: SizedSpace.sizedExtraMedium,
                                color: ColorsCustom.othersColor.darkgrey70,
                              ),
                              // textInputType: TextInputType.emailAddress,
                              // iconPrefix: Icons.email,
                              formController: controller.formNama,
                              validatorForm: (value) {
                                if (value!.isFormEmpty)
                                  return "Email Tidak Boleh Kosong";
                                else if (!value.isValidEmail)
                                  return "Email Harus Benar";
                                return null;
                              },
                            ),
                            SizedBox(
                              height: SizedSpace.sizedVeryLarge,
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                // padding: const EdgeInsets.symmetric(
                                //     horizontal: SizedMarginPadding
                                //         .sizedMarginPaddingLayoutWidth),
                                child: Text(
                                  "Jenis Kelamin".tr,
                                  style: TextStyleCustom.textDefault.copyWith(
                                    fontWeight: SizedFontWeight.textLight,
                                    fontSize: SizedSpace.sizedExtraMedium,
                                    color: ColorsCustom.othersColor.darkgrey70,
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      GetBuilder<AfterRegister1Controller>(
                                        builder: (_) => Radio(
                                            value: 'l',
                                            groupValue: controller.gender.value,
                                            onChanged: (gender) {
                                              controller.onChangedGender(
                                                  gender.toString());
                                            }),
                                      ),
                                      Expanded(
                                        child: Text('Lelaki'),
                                      )
                                    ],
                                  ),
                                  flex: 1,
                                ),
                                Expanded(
                                  child: Row(
                                    children: [
                                      GetBuilder<AfterRegister1Controller>(
                                        builder: (_) => Radio(
                                            value: 'p',
                                            groupValue: controller.gender.value,
                                            onChanged: (gender) {
                                              controller.onChangedGender(
                                                  gender.toString());
                                            }),
                                      ),
                                      Expanded(child: Text('Perempuan'))
                                    ],
                                  ),
                                  flex: 1,
                                ),
                              ],
                            ),
                            TextFormStyleTitleCustom(
                              hintText: ' Masukan Tempat Lahir',
                              title: ' Tempat Lahir',
                              titleStyle: TextStyleCustom.textDefault.copyWith(
                                fontWeight: SizedFontWeight.textLight,
                                fontSize: SizedSpace.sizedExtraMedium,
                                color: ColorsCustom.othersColor.darkgrey70,
                              ),
                              // textInputType: TextInputType.emailAddress,
                              // iconPrefix: Icons.email,
                              formController: controller.formTempatLahir,
                              validatorForm: (value) {
                                if (value!.isFormEmpty)
                                  return "Email Tidak Boleh Kosong";
                                else if (!value.isValidEmail)
                                  return "Email Harus Benar";
                                return null;
                              },
                            ),
                            TextFormStyleBirthDate(
                              readOnly: true,
                              hintText: 'hh/bb/ttttt'.tr,
                              title: 'Tanggal Lahir',
                              styleTitle: TextStyleCustom.textDefault.copyWith(
                                fontWeight: SizedFontWeight.textLight,
                                fontSize: SizedSpace.sizedExtraMedium,
                                color: ColorsCustom.othersColor.darkgrey70,
                              ),
                              suffixIcon: IconButton(
                                padding: EdgeInsets.only(
                                    left: SizedMarginPadding.sized_24),
                                onPressed: () {},
                                icon: Icon(Icons.date_range),
                                iconSize: 18.0,
                                color: ColorsCustom.othersColor.darkGrey30,
                              ),
                              // iconPrefix: Icons.date_range,
                              // marginTop: SizedMarginPadding.sized_15,
                              formController: controller.formBirthDate,
                              validatorForm: (value) {
                                if (value!.isFormEmpty)
                                  return 'form_validator_tanggal_lahir_tidak_boleh_kosong'
                                      .tr;
                                return null;
                              },
                              onTap: () => controller.onTapBirthDate(context),
                            ),
                            SizedBox(
                              height: SizedMarginPadding.sized_24,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Pilih Kategori',
                                  style: TextStyleCustom.textDefault.copyWith(
                                    fontWeight: SizedFontWeight.textLight,
                                    fontSize: SizedSpace.sizedExtraMedium,
                                    color: ColorsCustom.othersColor.darkgrey70,
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
                                      hintText: 'Silahkan pilih kategori ',
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
                                      color:
                                          ColorsCustom.othersColor.darkGrey30,
                                    ),
                                    items: controller.dataCategory?.value
                                        .map((value) {
                                      return DropdownMenuItem<String>(
                                        value: value.categoryName,
                                        child: Text(value.categoryName),
                                      );
                                    }).toList(),

                                    onChanged: (newValue) {
                                      controller.selectCategory =
                                          newValue ?? '';
                                      print(controller.selectCategory);

                                      // setState(() {
                                      // controller.dataCategory?.value = newValue;
                                      // });
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
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
                  horizontal: SizedMarginPadding.sized_10,
                  // vertical: SizedMarginPadding.sized_10
                ),
                child: Column(
                  children: [
                    ButtonCustom(
                      onTap: () {
                        var request = AfterRegisterRequest(
                          userId: controller.user!['user_id'],
                          idKtp: controller.formNip.text,
                          userName: controller.formNama.text,
                          gender: controller.gender.value.toString(),
                          birthOfDate: controller.formBirthDate.text,
                          placeBirth: controller.formTempatLahir.text,
                          password: "",
                          province: "",
                          regencies: "",
                          userCategory: controller.selectCategory,
                          userDescription: "",
                          userEmail: controller.user!['user_email'],
                          userAddress: "",
                          userAvatar: null,
                          userAvatarUpdate: false,
                          userKtpUpdate: false,
                          userKtp: null,
                          // userKtpUpdate: "",
                          userMobileNumber:
                              controller.user!['user_mobile_number'],
                          villages: "",
                          // userCategory: controller.ca
                        );
                        controller.putProfile(AfterRegisterRequest: request);
                      },
                      title: 'Lanjutkan',
                      borderRadius: SizedBorderRadius.borderRadiusSmall,
                      colorBackground: ColorsCustom.primaryColor.green,
                    ),
                    // SizedBox(
                    //   height: SizedMarginPadding.sized_24,
                    // ),
                    // GestureDetector(
                    //   onTap: () => {
                    //     controller.processToLogin(
                    //         user_email: controller.user!['user_email'],
                    //         user_password: controller.user!['user_password']
                    //         )
                    //   },
                    //   child: (Text(
                    //     'Lengkapi Nanti',
                    //     style: TextStyleHeading.textH6XSmall
                    //         .copyWith(color: ColorsCustom.textGrey),
                    //   )),
                    // )
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
