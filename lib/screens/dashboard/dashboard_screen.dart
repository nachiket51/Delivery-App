import 'package:delivery_app/services/storage_services.dart';
import 'package:delivery_app/utils/data/color_config.dart';
import 'package:delivery_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:sizer/sizer.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PlatformScaffold(
        appBar: PlatformAppBar(
          backgroundColor: ColorsConfig.primaryColor,
          material: (context, platform) => MaterialAppBarData(
            flexibleSpace: Center(
              child: Image.asset(
                'assets/images/initial_logo.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          cupertino: (context, platform) => CupertinoNavigationBarData(
            title: Image.asset(
              'assets/images/initial_logo.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        body: Center(
          child: TextWidget(
            text: 'Hello ${StorageService.fetchUser().name}',
            textStyle: TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.w500,
              color: ColorsConfig.primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
