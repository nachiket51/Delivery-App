import 'package:delivery_app/services/app_route_services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class DeliveryApp extends StatelessWidget {
  const DeliveryApp({Key? key}) : super(key: key);

  /// Navigation Key
  static GlobalKey<NavigatorState> appNavigatorKey =
      GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    /// Application Initialization
    return Sizer(builder: (context, orientation, deviceType) {
      return GetPlatform.isIOS
          ? GetCupertinoApp(
              navigatorKey: appNavigatorKey,
              routes: AppRoutes.applicationRoutes(),
              initialRoute: AppRoutes.SPLASH_SCREEN_ROUTE,
              debugShowCheckedModeBanner: false,
              theme: const CupertinoThemeData(
                  textTheme: CupertinoTextThemeData(
                      textStyle: TextStyle(fontFamily: 'Helvetica'))),
              localizationsDelegates: const [
                DefaultMaterialLocalizations.delegate,
                DefaultCupertinoLocalizations.delegate,
                DefaultWidgetsLocalizations.delegate,
              ],
            )
          : GetMaterialApp(
              navigatorKey: appNavigatorKey,
              routes: AppRoutes.applicationRoutes(),
              initialRoute: AppRoutes.SPLASH_SCREEN_ROUTE,
              debugShowCheckedModeBanner: false,
              theme: ThemeData(fontFamily: 'Helvetica'),
              localizationsDelegates: const [
                DefaultMaterialLocalizations.delegate,
                DefaultCupertinoLocalizations.delegate,
                DefaultWidgetsLocalizations.delegate,
              ],
            );
    });
  }
}
