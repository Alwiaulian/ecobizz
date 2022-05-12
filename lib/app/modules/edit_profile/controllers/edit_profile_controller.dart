import 'package:ecobiz_mobile_flutter/app/res/colors_data.dart';
import 'package:ecobiz_mobile_flutter/services/utils/formatter.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:get/get.dart';

class EditProfileController extends GetxController {
  final count = 0.obs;

  TextEditingController formNip = TextEditingController();
  TextEditingController formNama = TextEditingController();
  TextEditingController formTempatLahir = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController formBirthDate = TextEditingController();

  TextEditingController formBod = TextEditingController();
  String selectCategory = '';
  // RxList<DataCategory>? dataCategory = <DataCategory>[].obs;
  // Rx<int> gender = 0.obs;
  Rx<String> gender = 'l'.obs;

  Rx<bool> autoValidate = false.obs;
  Rx<bool> isChecked = false.obs;
  Rx<bool> showLoading = false.obs;
  Rx<bool> isHidden = true.obs;
  // final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
  void onChangedGender(String genderOption) {
    print("change gender $genderOption");
    gender.value = genderOption;
    update();
  }
    void onTapBirthDate(BuildContext context) async {
    FocusScope.of(context).unfocus();
    DatePicker.showDatePicker(
      context,
      showTitleActions: true,
      minTime: DateTime(1900, 1, 1),
      maxTime: DateTime(2050, 1, 1),
      onConfirm: (date) {
        String dateConvert = Formatter.getInstance.convertDateTimeFormatter(
          dateTime: date,
          toFormat: Formatter.formatterDateTime2,
        );
        formBirthDate.text = dateConvert;
        print("form date value  $date//$dateConvert//${formBirthDate.text}");
        FocusScope.of(context).unfocus();
        update();
      },
      currentTime: DateTime.now(),
      locale: LocaleType.id,
      theme: DatePickerTheme(
          doneStyle: TextStyle(color: ColorsCustom.primaryColor.orange)),
    );
  }

  backToLoginOnChange() {
    Get.back();
  }

  openImagePicker(BuildContext context) {}

  goToHome() {}
}
