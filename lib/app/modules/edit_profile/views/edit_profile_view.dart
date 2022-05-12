import 'package:ecobiz_mobile_flutter/app/common_widget/button_custom/button_custom.dart';
import 'package:ecobiz_mobile_flutter/app/common_widget/rendering_ui_service/cache_network_image_custom.dart';
import 'package:ecobiz_mobile_flutter/app/common_widget/text_form_custom/text_form_style_birth_date.dart';
import 'package:ecobiz_mobile_flutter/app/common_widget/text_form_custom/text_form_style_number_phone.dart';
import 'package:ecobiz_mobile_flutter/app/common_widget/text_view_custom/text_view_custom_ontap.dart';
import 'package:ecobiz_mobile_flutter/app/mixin_function_helper/decision_size.dart';
import 'package:ecobiz_mobile_flutter/app/res/colors_data.dart';
import 'package:ecobiz_mobile_flutter/app/res/path_image_icon.dart';
import 'package:ecobiz_mobile_flutter/app/res/styles.dart';
import 'package:ecobiz_mobile_flutter/const/enum.dart';
import 'package:ecobiz_mobile_flutter/const/sized_border_radius.dart';
import 'package:ecobiz_mobile_flutter/const/sized_font.dart';
import 'package:ecobiz_mobile_flutter/const/sized_font_weight.dart';
import 'package:ecobiz_mobile_flutter/const/sized_heading_text.dart';
import 'package:ecobiz_mobile_flutter/const/sized_margin_padding.dart';
import 'package:ecobiz_mobile_flutter/const/sized_space.dart';
import 'package:ecobiz_mobile_flutter/middleware/extension/string_extension.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/edit_profile_controller.dart';

class EditProfileView extends GetView<EditProfileController> with DecisionSize {
  final String? username;
  
  final bool? isObscure;
  EditProfileView({this.username, this.isObscure});
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
    //      SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    //     statusBarColor: ColorsCustom.textWhite,
    //     statusBarBrightness: Brightness.dark,
    //     statusBarIconBrightness: Brightness.dark,
    //   ));

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
                            'Edit Profil',
                            style: TextStyleHeading.textH5Small.copyWith(
                              fontWeight: SizedFontWeight.textBold,
                            ),
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
                              // color: ColorsCustom.textGrey,
                              // height: 36,
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
                                const SizedBox(
                                    height: SizedSpace.sizedTinyLarge),
                                Center(
                                  child:

                                      // (controller.fileImage.value.path!.isNotEmpty)
                                      //     ? BoxProfileChangeImage(
                                      //         isFromFile:
                                      //             (controller.fileImage.value.path!.isNotEmpty),
                                      //         onTap: () => controller.openImagePicker(context),
                                      //         idImage: controller.fileImage.value.path!)
                                      //     :
                                      GestureDetector(
                                    onTap: () =>
                                        controller.openImagePicker(context),
                                    child: Container(
                                      width: 124,
                                      height: 124,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: ColorsCustom
                                              .othersColor.whiteGrey40),
                                      child: const CacheNetworkImageCustom(
                                          idImage:
                                              PathImage.emptyPictureProfile,
                                          typeImage: TypeImage.Assets),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                    height: SizedSpace.sizedSuperMedium),
                                Center(
                                  child: TextViewCustomOnTap(
                                    onTap: () =>
                                        controller.openImagePicker(context),
                                    text: 'Pilih Gambar'.tr,
                                    fontFamily: FontFamily.Averta,
                                    colorText: ColorsCustom.primaryColor.orange,
                                    fontSize: SizedFont.headingH7,
                                    heighText: SizedHeightSpacingText
                                        .sizedHeightSpacing_22,
                                    fontWeight: SizedFontWeight.textBold,
                                  ),
                                ),
                                const SizedBox(
                                    height: SizedSpace.sizedTinyLarge),
                                Form(
                                    child: Column(
                                  children: [
                                    TextFormStyleTitleCustom(
                                      hintText: 'Tuliskan bio kamu',
                                      title: 'Bio',
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
                      ),
                    ),
                    Divider(
                      height: 2,
                      thickness: 3,
                    ),
                    Form(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 12,
                            ),
                            Text('Informasi Data',style: TextStyleHeading.textH6XSmall.copyWith(fontWeight: SizedFontWeight.textBold,color: ColorsCustom.othersColor.darkgrey70),),
                            TextFormStyleTitleCustom(
                              hintText: 'Masukan NIP',

                              // hintTextStyle: TextStyleCustom.textSmall.copyWith(color: ColorsCustom.othersColor.darkGrey300).copyWith(fontWeight:SizedFontWeight.textLight),
                              title: 'NIP (Nomor Induk Kepegawaian)',
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
                              // mainAxisAlignment: MainAxisAlignment.spaceAround,
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      GetBuilder<EditProfileController>(
                                        builder: (_) => Radio(
                                          visualDensity: const VisualDensity(
                                            horizontal: VisualDensity.minimumDensity,
                                            // vertical: VisualDensity.minimumDensity,
                                          ),
                                            activeColor:
                                                ColorsCustom.colorGreen400,
                                            // focusColor: ColorsCustom.colorGreen400,
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
                                    // mainAxisAlignment: MainAxisAlignment.start,
                                    // crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      GetBuilder<EditProfileController>(
                                        builder: (_) => Radio(
                                            visualDensity: const VisualDensity(
                                            horizontal: VisualDensity.minimumDensity,
                                            // vertical: VisualDensity.minimumDensity,
                                          ),
                                            activeColor:
                                                ColorsCustom.colorGreen400,
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
                                   Text(
                                      'Pilih Kategori',
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
                                          hintText: 'Silahkan pilih kategori',
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
                                            var selectedValue = newValue!;
                                          });
                                        },
                                        items: dropdownItems),
                                    SizedBox(
                              height: SizedMarginPadding.sized_24,
                            ),
                                    
                             
                          ],
                        ),
                      ),
                    ),
                    Divider(height: 2,thickness: 3,),
                       Form(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 12,
                            ),
                            Text('Alamat',style: TextStyleHeading.textH6XSmall.copyWith(fontWeight: SizedFontWeight.textBold,color: ColorsCustom.othersColor.darkgrey70),),
                            SizedBox(
                              height: SizedSpace.sizedVeryLarge,
                            ),
                            SizedBox(
                              height: SizedMarginPadding.sized_12,
                            ),
                                   Text(
                                      'Pilih Provinsi',
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
                                          hintText: 'Pilih Provinsi',
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
                                            var selectedValue = newValue!;
                                          });
                                        },
                                        items: dropdownItems),
                                    SizedBox(
                              height: SizedMarginPadding.sized_30,
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
                                          hintText: 'Pilih kota',
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
                                            var selectedValue = newValue!;
                                          });
                                        },
                                        items: dropdownItems),
                                    SizedBox(
                              height: SizedMarginPadding.sized_30,
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
                                            var selectedValue = newValue!;
                                          });
                                        },
                                        items: dropdownItems),
                                    SizedBox(
                              height: SizedMarginPadding.sized_30,
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
                                            var selectedValue = newValue!;
                                          });
                                        },
                                        items: dropdownItems),
                                    SizedBox(
                              height: SizedMarginPadding.sized_12,
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
                          
                                    
                             
                          ],
                        ),
                      ),
                    ),
                 
                  ],
                ),
              ),
            ),
            Container(
              decoration:
                  BoxDecoration(color: ColorsCustom.textWhite, boxShadow: [
                BoxShadow(
                  color: ColorsCustom.textWhite.withOpacity(0.5),
                  // spreadRadius: -10,
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
                vertical: SizedMarginPadding.sized_10,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: SizedMarginPadding.sized_10,
                ),
                child: ButtonCustom(
                  onTap: () => {controller.goToHome()},
                  title: 'Simpan & Lanjutkan',
                  borderRadius: SizedBorderRadius.borderRadiusSmall,
                  colorBackground: ColorsCustom.primaryColor.green,
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
