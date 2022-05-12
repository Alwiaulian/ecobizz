
import 'package:ecobiz_mobile_flutter/config/setup_locator.dart';
import 'package:ecobiz_mobile_flutter/services/internal_external_service/connection_status_singleton.dart';
import 'package:ecobiz_mobile_flutter/services/internal_external_service/file_downloader.dart';
import 'package:ecobiz_mobile_flutter/services/utils/formatter.dart';
import 'package:intl/date_symbol_data_local.dart';
// import 'package:services/external_services/fcm_helper.dart';

class EnvironmentConfig {
  static late final EnvironmentConfig _instance;

  static initialize() async {
    // await Firebase.initializeApp();
    initializeDateFormatting(Formatter.localID, null);
    FileDownloader.getInstance.initialize();
    ConnectionStatusSingleton connectionStatus =
        ConnectionStatusSingleton.getInstance();
    connectionStatus.initialize();
    _instance = EnvironmentConfig._privateConstructor();

    // await Get.putAsync<LocalNotificationHelper>(
    //     () async => await LocalNotificationHelper());
    setupLocator();
  }

  EnvironmentConfig._privateConstructor();

  static EnvironmentConfig get getInstance => _instance;
}
