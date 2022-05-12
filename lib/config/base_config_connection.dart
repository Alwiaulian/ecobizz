import 'package:ecobiz_mobile_flutter/app/routes/app_pages.dart';
import 'package:ecobiz_mobile_flutter/const/string_const.dart';
import 'package:ecobiz_mobile_flutter/data/data_source/shared_pref_secure_storage.dart';
import 'package:get/get.dart';

mixin BaseConfigConnection {
  void onCheckStatus(int? code) {
    switch (code) {
      case StringConst.errorCodeTokenExpire:
        processsToLogOut();
        break;
      default:
        print('exit');
        break;
    }
  }

  void processsToLogOut() async {
    SharedPrefSecureStorage.getInstance()!.setPrefOnBoarding(2);
    Get.offAllNamed(Routes.LOGIN);
  }
}
