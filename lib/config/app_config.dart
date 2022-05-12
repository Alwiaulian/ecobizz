
import 'package:ecobiz_mobile_flutter/const/enum.dart';
import 'package:flutter/material.dart';

class AppConfig extends InheritedWidget {
  final String appDisplayName;
  final String idDevice;
  final String baseUrl;
  final BuildFlavor buildFlavor;
  final MobilePlatform platform;

  const AppConfig({
    Key? key,
    required this.appDisplayName,
    this.idDevice = '',
    this.baseUrl = '',
    required this.buildFlavor,
    required this.platform,
    required Widget child,
  }) : super(key: key, child: child);

  static AppConfig? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppConfig>();
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => false;
}
