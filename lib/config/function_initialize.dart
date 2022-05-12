
import 'package:ecobiz_mobile_flutter/app/routes/app_pages.dart';

String getInitialRoute(int value) {
  switch (value) {
    case 1:
      return AppPages.ONBOARDING_INITIAL;
    case 2:
      return AppPages.LOGIN_INITIAL;
    case 3:
      // return AppPages.BASE_MENU_INITIAL;
    default:
      return AppPages.ONBOARDING_INITIAL;
  }
}
