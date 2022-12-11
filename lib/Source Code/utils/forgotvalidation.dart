import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mysticmandala/Source%20Code/utils/showdialog.dart';
import 'appcolors.dart';
import 'appstrings.dart';

class ForgotValidation extends GetxController {
  static Pattern EmailPattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  static RegExp regExp = RegExp(EmailPattern.toString());
  void ForgotVal(String Email) {
    if (Email.isEmpty) {
      ShowDialog(AppStrings.MESSAGE_TEXT, AppStrings.EMAIL_REQ_TEXT,
          AppColors.WHITE_COLOR);
    } else if (!regExp.hasMatch(Email.trim())) {
      ShowDialog(AppStrings.MESSAGE_TEXT, AppStrings.INVALID_EMAIL_TEXT,
          AppColors.WHITE_COLOR);
    } else {
      FocusManager.instance.primaryFocus?.unfocus();
      /////////////////// calling LOGIN_API_FUNCTION /////////////////////
      ShowDialog(AppStrings.MESSAGE_TEXT, AppStrings.SUCCESS_TEXT,
          AppColors.GREEN_COLOR);
      Get.toNamed('/OTPScreen');
    }
  }
}
