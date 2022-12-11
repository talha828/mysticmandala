import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mysticmandala/Source%20Code/utils/showdialog.dart';
import 'appcolors.dart';
import 'appstrings.dart';

class NewPassValidation extends GetxController {
  static Pattern passwordpattern =
      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
  RegExp passregExp = RegExp(passwordpattern.toString());
  void NewPassVal(String ConfirmNewPass, String NewPassword) {
    if (NewPassword.isEmpty || ConfirmNewPass.isEmpty) {
      ShowDialog(AppStrings.MESSAGE_TEXT, AppStrings.NEWPASS_REQ_TEXT,
          AppColors.WHITE_COLOR);
    } else if (!passregExp.hasMatch(NewPassword.trim())) {
      ShowDialog(AppStrings.MESSAGE_TEXT, AppStrings.INVALID_PASSWORD_TEXT,
          AppColors.WHITE_COLOR);
    } else if (!passregExp.hasMatch(ConfirmNewPass.trim())) {
      ShowDialog(AppStrings.MESSAGE_TEXT, AppStrings.INVALID_PASSWORD_TEXT,
          AppColors.WHITE_COLOR);
    } else if (NewPassword != ConfirmNewPass) {
      ShowDialog(AppStrings.MESSAGE_TEXT, AppStrings.NOTMATCH_PASSWORD_TEXT,
          AppColors.WHITE_COLOR);
    } else {
      FocusManager.instance.primaryFocus?.unfocus();
      /////////////////// calling LOGIN_API_FUNCTION /////////////////////
      ShowDialog(AppStrings.MESSAGE_TEXT, AppStrings.SUCCESS_TEXT,
          AppColors.GREEN_COLOR);
      Get.toNamed('/Login');
    }
  }
}
