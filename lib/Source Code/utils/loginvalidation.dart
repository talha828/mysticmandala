import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mysticmandala/Source%20Code/utils/showdialog.dart';
import 'appcolors.dart';
import 'appstrings.dart';

class LoginValidation extends GetxController {
  static Pattern EmailPattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  static RegExp regExp = RegExp(EmailPattern.toString());
  static Pattern passwordpattern =
      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
  RegExp passregExp = RegExp(passwordpattern.toString());
  void LoginVal(String Email, String Password) {
    if (Email.isEmpty) {
      ShowDialog(AppStrings.MESSAGE_TEXT, AppStrings.EMAIL_REQ_TEXT,
          AppColors.WHITE_COLOR);
    } else if (Password.isEmpty) {
      ShowDialog(AppStrings.MESSAGE_TEXT, AppStrings.PASSWORD_REQ_TEXT,
          AppColors.WHITE_COLOR);
    } else if (!regExp.hasMatch(Email.trim())) {
      ShowDialog(AppStrings.MESSAGE_TEXT, AppStrings.INVALID_EMAIL_TEXT,
          AppColors.WHITE_COLOR);
    } else if (!passregExp.hasMatch(Password.trim())) {
      ShowDialog(AppStrings.MESSAGE_TEXT, AppStrings.INVALID_PASSWORD_TEXT,
          AppColors.WHITE_COLOR);
    } else {
      FocusManager.instance.primaryFocus?.unfocus();
      /////////////////// calling LOGIN_API_FUNCTION /////////////////////
      ShowDialog(AppStrings.MESSAGE_TEXT, AppStrings.SUCCESS_TEXT,
          AppColors.GREEN_COLOR);
      Get.toNamed('/TermsScreen');
    }
  }
}
