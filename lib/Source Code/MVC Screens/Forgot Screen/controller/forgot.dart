import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mysticmandala/Source%20Code/utils/loader.dart';

import '../../../Utils/appstrings.dart';
import '../../../utils/appcolors.dart';
import '../../../utils/showdialog.dart';
import 'package:http/http.dart' as http;

import '../model/forgot.dart';

final Email = GetStorage();

class ForgotController extends GetxController {
  Future ForgotPass(String LogUserEmail) async {
    var res;
    try {
      showLoading();
      http.Response response = await http.post(
          Uri.parse(
              'https://mysticmandala.app/wp-json/bdpwr/v1/reset-password'),
          body: {
            "email": LogUserEmail,
          });
      var ForgottSoreData = jsonDecode(response.body);
      print("User Data: " + ForgottSoreData.toString());
      res = ForgottSoreData['message'];
      print(response.statusCode);
      if (response.statusCode == 200) {
        stopLoading();
        var fetchForgotResponse = ForgotModel.fromJson(ForgottSoreData);
        if (fetchForgotResponse.data.status == 200) {
          stopLoading();
          print("Forgot email sent Successfully");
          ShowDialog("Congratulations", "${fetchForgotResponse.message}",
              AppColors.GREEN_COLOR);
          Email.write("Email", LogUserEmail);
          Get.toNamed('/OTPScreen');
        } else if (fetchForgotResponse.data.status == 500) {
          stopLoading();
          ShowDialog(
              "Message", "${fetchForgotResponse.data.status}", Colors.red);
          res = fetchForgotResponse.data.status;
        }
        //   Get.toNamed('/Home');
      } else if (response.statusCode == 500) {
        stopLoading();
        print("Unauthorized User");
        ShowDialog("Message", "Can't sent email", Colors.red);
      }
    } catch (e) {
      stopLoading();
      ShowDialog("Message", "${res}", Colors.red);
    }
  }
}
