import 'package:delivery_app/utils/data/color_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:sizer/sizer.dart';

class InputWidget extends StatelessWidget {
  final String placeHolder;
  final Function(String)? onChanged;
  final IconData? endWidget;
  final bool? hideCharacter;
  final Function? changeHideCharacterStatus;

  const InputWidget({
    Key? key,
    this.onChanged,
    required this.placeHolder,
    this.hideCharacter = false,
    this.changeHideCharacterStatus,
    this.endWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PlatformTextField(
      material: (context, platform) => MaterialTextFieldData(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 5.w),
          hintText: placeHolder,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.sp),
          ),
          suffixIcon: endWidget != null
              ? GestureDetector(
                  onTap: () {
                    if (changeHideCharacterStatus!() != null) {
                      changeHideCharacterStatus!();
                    }
                  },
                  child: Icon(endWidget))
              : const SizedBox(),
        ),
      ),
      cupertino: (context, platform) => CupertinoTextFieldData(
          placeholder: placeHolder,
          style: const TextStyle(color: Colors.black),
          padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 1.5.h),
          suffix: endWidget != null
              ? Padding(
                  padding: EdgeInsets.only(right: 5.w),
                  child: GestureDetector(
                      onTap: () {
                        if (changeHideCharacterStatus!() != null) {
                          changeHideCharacterStatus!();
                        }
                      },
                      child: Icon(endWidget)),
                )
              : const SizedBox(),
          decoration: BoxDecoration(
            border: Border.all(color: ColorsConfig.primaryColor),
            borderRadius: BorderRadius.circular(10.sp),
          )),
      onChanged: (text) {
        if (onChanged != null) {
          onChanged!(text);
        }
      },
      obscureText: hideCharacter,
    );
  }
}
