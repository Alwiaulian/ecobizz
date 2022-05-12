import 'dart:io';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:device_info_plus/device_info_plus.dart';

class GetDeviceInfo {
  GetDeviceInfo._privateConstructor();

  static final GetDeviceInfo _instance = GetDeviceInfo._privateConstructor();

  static GetDeviceInfo get getInstance => _instance;

  Future<String> getDeviceIdentifier() async {
    String deviceIdentifier = "unknown";
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();

    if (Platform.isAndroid) {
      AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
      deviceIdentifier = androidInfo.androidId!;
    } else if (Platform.isIOS) {
      IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
      deviceIdentifier = iosInfo.identifierForVendor!;
    } else if (kIsWeb) {
      // The web doesnt have a device UID, so use a combination fingerprint as an example
      WebBrowserInfo webInfo = await deviceInfo.webBrowserInfo;
      deviceIdentifier =
          "${webInfo.vendor} ${webInfo.userAgent} ${webInfo.hardwareConcurrency.toString()}";
    } else if (Platform.isLinux) {
      LinuxDeviceInfo linuxInfo = await deviceInfo.linuxInfo;
      deviceIdentifier = linuxInfo.machineId!;
    }
    return deviceIdentifier;
  }
}
