import 'package:ecobiz_mobile_flutter/app/mixin_function_helper/decision_size.dart';
import 'package:ecobiz_mobile_flutter/app/modules/home/views/home_view.dart';
import 'package:ecobiz_mobile_flutter/app/modules/notifications/views/notifications_view.dart';
import 'package:ecobiz_mobile_flutter/app/modules/produk/views/produk_view.dart';
import 'package:ecobiz_mobile_flutter/app/modules/profil/views/profil_view.dart';
import 'package:ecobiz_mobile_flutter/app/res/colors_data.dart';
import 'package:ecobiz_mobile_flutter/const/sized_general_widget.dart';
import 'package:ecobiz_mobile_flutter/const/sized_icons.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/base_menu_controller.dart';

class BaseMenuView extends GetView<BaseMenuController> with DecisionSize {
  final String? username;

  final bool? isObscure;
  BaseMenuView({this.username, this.isObscure});

  get password => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:  Obx(
                  () => IndexedStack(
                    index: controller.currentPage.value,
                    children: [
                      HomeView(),
                      NotificationsView(),
                      ProdukView(),
                      ProfilView(),
                    ],
                  ),
                ),
      ),
      bottomNavigationBar: Obx(
        () => Container(
          height: SizedGeneralWidget.sizedHeightAppBarSearch,
          color: Colors.white,

          child: BottomNavigationBar(
            backgroundColor: ColorsCustom.textWhite,
            type: BottomNavigationBarType.fixed,
            elevation: 0,
            iconSize: SizedIcons.sizedVeryBig,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  (controller.currentPage.value == 0)
                      ? Icons.home
                      : Icons.home_outlined,
                ),
                label: 'Beranda',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  (controller.currentPage.value == 1)
                      ? Icons.notifications
                      : Icons.notifications_outlined,
                ),
                label: 'Notifikasi',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  (controller.currentPage.value == 2)
                      ? Icons.shopping_bag
                      : Icons.shopping_bag_outlined,
                ),
                label: 'Produk'.tr,
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  (controller.currentPage.value == 3)
                      ? Icons.person
                      : Icons.person_outline,
                ),
                label: 'Profil'.tr,
              ),
            ],
            currentIndex: controller.currentPage.value,
            selectedItemColor: ColorsCustom.colorGreen,
            unselectedItemColor: ColorsCustom.othersColor.darkGrey30,
            onTap: (value) => controller.onSelectPage(value),
          ),
        ),
      ),
    );
  }

  // void setState(Null Function() param0) {}
}
