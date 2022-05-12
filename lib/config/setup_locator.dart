// import 'package:daya_app_contributor/services/internal_external_services/fcm_helper.dart';
import 'package:get_it/get_it.dart';
// import 'package:services/internal_services/local_notification_helper.dart';
// import 'package:ecobiz_mobile_flutter/services/internal_external_service/fcm_helper.dart';

final getIt = GetIt.instance;

void setupLocator() {
  // getIt.registerLazySingleton<FcmHelper>(() => FcmHelper.init());
  // getIt.registerLazySingleton<FcmHelper>(() => null)
  // getIt.registerSingleton<LocalNotificationHelper>(LocalNotificationHelper());

// Alternatively you could write it if you don't like global variables
  // GetIt.I.registerSingleton<AppModel>(AppModel());
}
