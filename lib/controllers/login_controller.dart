import 'dart:convert';

import 'package:delivery_app/models/login.dart';
import 'package:delivery_app/services/app_route_services.dart';
import 'package:delivery_app/services/storage_services.dart';
import 'package:delivery_app/utils/enums.dart';
import 'package:delivery_app/utils/events_messager/log_message.dart';
import 'package:delivery_app/utils/events_messager/toast_message.dart';
import 'package:delivery_app/utils/keys.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class LoginController extends GetxController {
  RxBool isScreenLoading = false.obs;

  RxString emailId = ''.obs;
  RxString pwd = ''.obs;

  RxBool hidePassword = true.obs;

  var user = Login().obs;

  /// HTTP: (POST) login user
  Future<void> loginUser() async {
    isScreenLoading(true);
    Map body = {
      "email": emailId.value,
      "password": pwd.value,
      "user_role_id": 3
    };

    http.Response response = await http.post(
      Uri.https(
          PrimaryKeys.BASE_URL, PrimaryKeys.API_PATH + PrimaryKeys.LOGIN_USER),
      body: json.encode(body),
    );

    if (response.statusCode == 200) {
      isScreenLoading(false);
      user.value = Login.fromJson(json.decode(response.body));
      StorageService.saveUser(response.body);
      extremeLog(message: response.body,level: LogLevel.Debug);
      showToast('Logged in Successfully');
      AppRoutes.navigatePage(
          pageRoute: AppRoutes.DASHBOARD_SCREEN_ROUTE, pageNav: PageNav.offAll);
    } else {
      isScreenLoading(false);
      showToast(json.decode(response.body)['email'].toString());
      throw response.body;
    }
  }
}
