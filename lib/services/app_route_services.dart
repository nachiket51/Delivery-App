import 'package:delivery_app/screens/dashboard/dashboard_screen.dart';
import 'package:delivery_app/screens/login/login_screen.dart';
import 'package:delivery_app/screens/splash/splash_screen.dart';
import 'package:delivery_app/utils/enums.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppRoutes {

  static const String SPLASH_SCREEN_ROUTE = '/splash';
  static const String LOGIN_SCREEN_ROUTE = '/login';
  static const String DASHBOARD_SCREEN_ROUTE = '/dashboard';

  /// All Application Routes
  static Map<String, WidgetBuilder> applicationRoutes() {
    return {
      SPLASH_SCREEN_ROUTE: (context) => const SplashScreen(),
      LOGIN_SCREEN_ROUTE: (context) =>  LoginScreen(),
      DASHBOARD_SCREEN_ROUTE: (context) => const DashboardScreen(),
    };
  }


  /// App Navigation Function
  static navigatePage(
      {required String pageRoute,
        required PageNav pageNav,
        Object? arguments}) {
    if (pageNav == PageNav.to) {
      if (arguments == null) {
        Get.toNamed(pageRoute);
      } else {
        Get.toNamed(pageRoute, arguments: arguments);
      }
    } else if (pageNav == PageNav.off) {
      if (arguments == null) {
        Get.offNamed(pageRoute);
      } else {
        Get.offNamed(pageRoute, arguments: arguments);
      }
    } else if (pageNav == PageNav.offAll) {
      if (arguments == null) {
        Get.offAllNamed(pageRoute);
      } else {
        Get.offAllNamed(pageRoute, arguments: arguments);
      }
    } else {
      Get.back();
    }
  }
}