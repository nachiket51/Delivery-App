import 'dart:async';

import 'package:delivery_app/services/app_route_services.dart';
import 'package:delivery_app/services/storage_services.dart';
import 'package:delivery_app/utils/data/color_config.dart';
import 'package:delivery_app/utils/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:sizer/sizer.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  /// auto-login function
  void navigateUser() {
    if (StorageService.fetchUser().id != null) {
      AppRoutes.navigatePage(
        pageRoute: AppRoutes.DASHBOARD_SCREEN_ROUTE,
        pageNav: PageNav.offAll,
      );
    } else {
      AppRoutes.navigatePage(
        pageRoute: AppRoutes.LOGIN_SCREEN_ROUTE,
        pageNav: PageNav.offAll,
      );
    }
  }

  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),

        /// first screen navigation
        () => navigateUser());
  }

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      backgroundColor: ColorsConfig.primaryColor,
      body: Center(
        child: Image.asset(
          'assets/images/initial_logo.png',
          width: 80.w,
        ),
      ),
    );
  }
}
