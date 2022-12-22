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

import '../../Forgot Screen/controller/forgot.dart';
import '../model/verifymodel.dart';

final code = GetStorage();

class VerifyController extends GetxController {
  Future VerifyCode(String Code) async {
    var res;
    try {
      showLoading();
      http.Response response = await http.post(
          Uri.parse('https://mysticmandala.app/wp-json/bdpwr/v1/validate-code'),
          body: {
            "email": Email.read("Email"),
            "code": Code,
          });
      var VerifySoreData = jsonDecode(response.body);
      print("User Data: " + VerifySoreData.toString());
      res = VerifySoreData['message'];
      print(response.statusCode);
      if (response.statusCode == 200) {
        stopLoading();
        var fetchVerifyResponse = VerifyModel.fromJson(VerifySoreData);
        if (fetchVerifyResponse.data.status == 200) {
          stopLoading();
          print("Code Verify Successfully");
          ShowDialog("Congratulations", "${fetchVerifyResponse.message}",
              AppColors.GREEN_COLOR);
          //    code.read()
          Get.toNamed('/ChangePass');
        } else if (fetchVerifyResponse.data.status == 500) {
          stopLoading();
          ShowDialog("Message", "${fetchVerifyResponse.message}", Colors.red);
          res = fetchVerifyResponse.message;
        }
        //   Get.toNamed('/Home');
      } else if (response.statusCode == 500) {
        stopLoading();
        print("Unauthorized User");
        ShowDialog("Message", "${res}", Colors.red);
      }
    } catch (e) {
      stopLoading();
      ShowDialog("Message", "${res}", Colors.red);
    }
  }
}
