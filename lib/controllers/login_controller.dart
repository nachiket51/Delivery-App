import 'package:get/get.dart';

class LoginController extends GetxController {
  RxBool isScreenLoading = false.obs;

  RxString emailId = ''.obs;
  RxString pwd = ''.obs;

  RxBool hidePassword = true.obs;
}
