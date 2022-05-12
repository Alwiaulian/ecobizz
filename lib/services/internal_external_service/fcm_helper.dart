import 'package:firebase_messaging/firebase_messaging.dart';

class FcmHelper {
  FirebaseMessaging? _messaging = null;

  FcmHelper.init() {
    _messaging = FirebaseMessaging.instance;
  }

  Future<String?> getTokenFirebase() async {
    if (_messaging == null) {
      FcmHelper.init();
    }
    return await _messaging!.getToken() ?? null;
  }

  FirebaseMessaging? get getFirebaseMessaging {
    if (_messaging == null) {
      FcmHelper.init();
    }
    return _messaging;
  }

}
