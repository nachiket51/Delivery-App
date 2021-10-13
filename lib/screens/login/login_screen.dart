import 'package:delivery_app/controllers/login_controller.dart';
import 'package:delivery_app/utils/data/color_config.dart';
import 'package:delivery_app/utils/events_messager/toast_message.dart';
import 'package:delivery_app/widgets/input_widget.dart';
import 'package:delivery_app/widgets/text_widget.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class LoginScreen extends StatelessWidget {
  final LoginController _loginController = Get.put(LoginController());

  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      /// if screen is in loading state
      if (_loginController.isScreenLoading.isTrue) {
        return PlatformScaffold(
          body: Center(
            child: PlatformCircularProgressIndicator(),
          ),
        );
      }

      /// if screen is not in loading state
      return SafeArea(
        child: PlatformScaffold(
          appBar: PlatformAppBar(
            backgroundColor: ColorsConfig.primaryColor,
            leading: const Icon(Icons.close,color: Colors.white,),
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
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 4.h,
                  ),
                  TextWidget(
                    text: 'Login',
                    textStyle: TextStyle(
                      fontSize: 30.sp,
                      color: ColorsConfig.primaryColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  InputWidget(
                    placeHolder: 'Email Address',
                    onChanged: (text) {
                      _loginController.emailId.value = text;
                    },
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  InputWidget(
                    placeHolder: 'Password',
                    onChanged: (text) {
                      _loginController.pwd.value = text;
                    },
                    hideCharacter: _loginController.hidePassword.value,
                    endWidget: _loginController.hidePassword.isTrue
                        ? Icons.visibility
                        : Icons.visibility_off,
                    changeHideCharacterStatus: () {
                      _loginController.hidePassword.value =
                          !_loginController.hidePassword.value;
                    },
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  const Align(
                      alignment: Alignment.centerRight,
                      child: TextWidget(text: 'Forget Password ?')),
                  SizedBox(
                    height: 10.h,
                  ),
                  SizedBox(
                    width: 100.w,
                    child: PlatformElevatedButton(
                      child: const TextWidget(
                        text: 'Login',
                      ),
                      material: (context, platform) =>
                          MaterialElevatedButtonData(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 2.h),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.sp),
                          ),
                          primary: ColorsConfig.primaryColor,
                        ),
                      ),
                      cupertino: (context, platform) =>
                          CupertinoElevatedButtonData(
                        originalStyle: true,
                        padding: EdgeInsets.symmetric(vertical: 2.h),
                        borderRadius: BorderRadius.circular(10.sp),
                        color: ColorsConfig.primaryColor,
                      ),
                      onPressed: () {
                        bool valid = _fieldsValidator();
                        if(valid) {
                          _loginController.loginUser();
                        }
                      },
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  RichText(
                    text: const TextSpan(
                        text: 'New Here? ',
                        style: TextStyle(color: Color(0x6B000000)),
                        children: [
                          TextSpan(
                              text: 'Create an account',
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Color(0xff000000)))
                        ]),
                  )
                ],
              ),
            ),
          ),
        ),
      );
    });
  }

  bool _fieldsValidator() {
    if(EmailValidator.validate(_loginController.emailId.value)){
      if(_loginController.pwd.isNotEmpty){
        return true;
      }else {
        showToast('Please Enter valid Password');
      }
    }else {
      showToast('Please Enter valid Email ID');
    }
    return false;
  }
}
