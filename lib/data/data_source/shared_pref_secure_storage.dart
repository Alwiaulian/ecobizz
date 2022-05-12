// import 'dart:async';
import 'dart:convert';
import 'package:ecobiz_mobile_flutter/data/model/others/forgot_password_user_cache.dart';
import 'package:ecobiz_mobile_flutter/data/model/others/login_user_cache.dart';
import 'package:ecobiz_mobile_flutter/data/model/others/register_user_cache.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

abstract class StringSharedPreferences {
  static final onBoarding = "onboardingCache";
  static final userData = "userdata";
  static final cacheLoginUser = "cacheLoginUser";

  static final cacheRegisterUser = "cacheRegisterUser";
  static final cacheForgotPasswordUser = "cacheForgotPasswordUser";
  static final tokenAuth = "tokenAuth";
  // static final totalScoreQuiz = "totalScoreQuiz";
}

class SharedPrefSecureStorage {
  SharedPrefSecureStorage._privateConstructor();

  static FlutterSecureStorage? secureStorage;

  static SharedPrefSecureStorage? _instance;

  static SharedPrefSecureStorage? getInstance() {
    if (_instance == null) {
      _instance = SharedPrefSecureStorage._privateConstructor();
      secureStorage = const FlutterSecureStorage();
    }
    return _instance;
  }

  FlutterSecureStorage? get getSecureStorage => secureStorage == null
      ? secureStorage = const FlutterSecureStorage()
      : secureStorage;

  final AndroidOptions androidOptions =
      const AndroidOptions(encryptedSharedPreferences: true);

  final iosOptions = const IOSOptions(accessibility: IOSAccessibility.unlocked);

  void setPrefOnBoarding(int val) async {
    await getSecureStorage!.write(
      key: StringSharedPreferences.onBoarding,
      value: val.toString(),
      aOptions: androidOptions,
      iOptions: iosOptions,
    );
  }

  Future<int> getPrefOnBoarding() async {
    String? value = await getSecureStorage!.read(
      key: StringSharedPreferences.onBoarding,
      aOptions: androidOptions,
      iOptions: iosOptions,
    );

    return value == null ? 0 : int.parse(value);
  }

  void setLoginUserCache(LoginUserCache valueUser) async {
    await getSecureStorage!.write(
      key: StringSharedPreferences.cacheLoginUser,
      value: json.encode(valueUser.toJson()),
      aOptions: androidOptions,
      iOptions: iosOptions,
    );
  }
  
  void setRegisterUserCache(RegisterUserCache valueUser) async {
    await getSecureStorage!.write(
      key: StringSharedPreferences.cacheRegisterUser,
      value: json.encode(valueUser.toJson()),
      aOptions: androidOptions,
      iOptions: iosOptions,
    );
  }
  void setForgotPasswordUserCache(RegisterUserCache valueUser) async {
    await getSecureStorage!.write(
      key: StringSharedPreferences.cacheForgotPasswordUser,
      value: json.encode(valueUser.toJson()),
      aOptions: androidOptions,
      iOptions: iosOptions,
    );
  }
  Future<LoginUserCache> getLoginUserCache() async {
    String? value = await getSecureStorage!.read(
      key: StringSharedPreferences.cacheLoginUser,
      aOptions: androidOptions,
      iOptions: iosOptions,
    );

    return value == null
        ? LoginUserCache(user_email: "", user_password: "", isChecked: false)
        : LoginUserCache.fromJson(json.decode(value));
  }

  Future<RegisterUserCache> getRegisterUserCache() async {
    String? value = await getSecureStorage!.read(
      key: StringSharedPreferences.cacheRegisterUser,
      aOptions: androidOptions,
      iOptions: iosOptions,
    );

    return value == null
        ? RegisterUserCache(user_email: "", user_password: "", isChecked: false, user_mobile_number: 0)
        : RegisterUserCache.fromJson(json.decode(value));
  }

  Future<ForgotPasswordUserCache> getForgotPasswordUserCache() async {
    String? value = await getSecureStorage!.read(
      key: StringSharedPreferences.cacheForgotPasswordUser,
      aOptions: androidOptions,
      iOptions: iosOptions,
    );

    return value == null
        ? ForgotPasswordUserCache(user_email: "",)
        : ForgotPasswordUserCache.fromJson(json.decode(value));
  }

   void saveToken(String token) async {
    await getSecureStorage!.write(
      key: StringSharedPreferences.tokenAuth,
      value: token,
      aOptions: androidOptions,
      iOptions: iosOptions,
    );
  }

  // void saveTotalScoreQuiz(int score) async {
  //   await getSecureStorage!.write(
  //     key: StringSharedPreferences.totalScoreQuiz,
  //     value: score.toString(),
  //     aOptions: androidOptions,
  //     iOptions: iosOptions,
  //   );
  // }

  Future<String> getToken() async {
    String? value = await getSecureStorage!.read(
      key: StringSharedPreferences.tokenAuth,
      aOptions: androidOptions,
      iOptions: iosOptions,
    );

    return value == null ? "" : value;
  }

  // Future<String> getTotalScore() async {
  //   String? value = await getSecureStorage!.read(
  //     key: StringSharedPreferences.totalScoreQuiz,
  //     aOptions: androidOptions,
  //     iOptions: iosOptions,
  //   );

  //   return value == null ? "" : value;
  // }

  Future<bool> deleteUserData() async {
    await getSecureStorage!.delete(
      key: StringSharedPreferences.cacheLoginUser,
      aOptions: androidOptions,
      iOptions: iosOptions,
    );

    return true;
  }
}
