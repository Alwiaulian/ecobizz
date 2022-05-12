import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../modules/after_register_1/bindings/after_register_1_binding.dart';
import '../modules/after_register_1/views/after_register_1_view.dart';
import '../modules/after_register_2/bindings/after_register_2_binding.dart';
import '../modules/after_register_2/views/after_register_2_view.dart';
import '../modules/after_register_3/bindings/after_register_3_binding.dart';
import '../modules/after_register_3/views/after_register_3_view.dart';
import '../modules/base_menu/bindings/base_menu_binding.dart';
import '../modules/base_menu/views/base_menu_view.dart';
import '../modules/detail_kiat_kiat/bindings/detail_kiat_kiat_binding.dart';
import '../modules/detail_kiat_kiat/views/detail_kiat_kiat_view.dart';
import '../modules/edit_profile/bindings/edit_profile_binding.dart';
import '../modules/edit_profile/views/edit_profile_view.dart';
import '../modules/forgot_password/bindings/forgot_password_binding.dart';
import '../modules/forgot_password/views/forgot_password_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/kiat_kiat/bindings/kiat_kiat_binding.dart';
import '../modules/kiat_kiat/views/kiat_kiat_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/new_password/bindings/new_password_binding.dart';
import '../modules/new_password/views/new_password_view.dart';
import '../modules/notifications/bindings/notifications_binding.dart';
import '../modules/notifications/views/notifications_view.dart';
import '../modules/onboarding/bindings/onboarding_binding.dart';
import '../modules/onboarding/views/onboarding_view.dart';
import '../modules/otp/bindings/otp_binding.dart';
import '../modules/otp/views/otp_view.dart';
import '../modules/produk/bindings/produk_binding.dart';
import '../modules/produk/views/produk_view.dart';
import '../modules/profil/bindings/profil_binding.dart';
import '../modules/profil/views/profil_view.dart';
import '../modules/register/bindings/register_binding.dart';
import '../modules/register/views/register_view.dart';
import '../modules/success_new_password/bindings/success_new_password_binding.dart';
import '../modules/success_new_password/views/success_new_password_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ONBOARDING;
  static const BASE_MENU_INITIAL = Routes.BASE_MENU;
  static const ONBOARDING_INITIAL = Routes.ONBOARDING;
  static const LOGIN_INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.ONBOARDING,
      page: () => OnboardingView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.AFTER_REGISTER_1,
      page: () => AfterRegister1View(),
      binding: AfterRegister1Binding(),
    ),
    GetPage(
      name: _Paths.AFTER_REGISTER_2,
      page: () => AfterRegister2View(),
      binding: AfterRegister2Binding(),
    ),
    GetPage(
      name: _Paths.AFTER_REGISTER_3,
      page: () => AfterRegister3View(),
      binding: AfterRegister3Binding(),
    ),
    GetPage(
      name: _Paths.FORGOT_PASSWORD,
      page: () => ForgotPasswordView(),
      binding: ForgotPasswordBinding(),
    ),
    GetPage(
      name: _Paths.OTP,
      page: () => OtpView(),
      binding: OtpBinding(),
    ),
    GetPage(
      name: _Paths.NEW_PASSWORD,
      page: () => NewPasswordView(),
      binding: NewPasswordBinding(),
    ),
    GetPage(
      name: _Paths.SUCCESS_NEW_PASSWORD,
      page: () => SuccessNewPasswordView(),
      binding: SuccessNewPasswordBinding(),
    ),
    GetPage(
      name: _Paths.BASE_MENU,
      page: () => BaseMenuView(),
      binding: BaseMenuBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFICATIONS,
      page: () => NotificationsView(),
      binding: NotifiactionsBinding(),
    ),
    GetPage(
      name: _Paths.PRODUK,
      page: () => ProdukView(),
      binding: ProdukBinding(),
    ),
    GetPage(
      name: _Paths.PROFIL,
      page: () => ProfilView(),
      binding: ProfilBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_PROFILE,
      page: () => EditProfileView(),
      binding: EditProfileBinding(),
    ),
    GetPage(
      name: _Paths.KIAT_KIAT,
      page: () => KiatKiatView(),
      binding: KiatKiatBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_KIAT_KIAT,
      page: () => DetailKiatKiatView(),
      binding: DetailKiatKiatBinding(),
    ),
  ];
}
