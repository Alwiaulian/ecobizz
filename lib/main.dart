import 'package:ecobiz_mobile_flutter/app/res/colors_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() {
  initializeDateFormatting();
  runApp(
  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      routingCallback: (value) {
        if (value!.current == '/onboarding' || value.current == '/home') {
          SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
            statusBarColor: ColorsCustom.colorGreen,
            statusBarBrightness: Brightness.light,
            statusBarIconBrightness: Brightness.light,
          )
          );
        } else {
          SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
            statusBarColor: ColorsCustom.textWhitess,
            statusBarBrightness: Brightness.dark,
            statusBarIconBrightness: Brightness.dark,
          ));
        }
      },
    ),
  );
}
