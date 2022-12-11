import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mysticmandala/Source%20Code/utils/showdialog.dart';

import 'appcolors.dart';
import 'appstrings.dart';

class OTPValidation extends GetxController {
  void OTPVal(String Code) {
    if (Code.isEmpty) {
      ShowDialog(AppStrings.MESSAGE_TEXT, AppStrings.ENTER_CODE_TEXT,
          AppColors.WHITE_COLOR);
    } else {
      FocusManager.instance.primaryFocus?.unfocus();
      /////////////////// calling LOGIN_API_FUNCTION /////////////////////
      ShowDialog(AppStrings.MESSAGE_TEXT, AppStrings.SUCCESS_TEXT,
          AppColors.GREEN_COLOR);
      Get.toNamed('/ChangePass');
    }
  }
}
