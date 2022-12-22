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
import '../model/chngpassmodel.dart';

final code = GetStorage();

class ChangePassController extends GetxController {
  Future ChngPass(String password) async {
    var res;
    try {
      showLoading();
      http.Response response = await http.post(
          Uri.parse('https://mysticmandala.app/wp-json/bdpwr/v1/set-password'),
          body: {
            "email": Email.read("Email"),
            "password": password,
            "code": code.read(" "),
          });
      var ChngPassSoreData = jsonDecode(response.body);
      print("User Data: " + ChngPassSoreData.toString());
      res = ChngPassSoreData['message'];
      print(response.statusCode);
      if (response.statusCode == 200) {
        stopLoading();
        var fetchChngPassResponse = ChngPassModel.fromJson(ChngPassSoreData);
        if (fetchChngPassResponse.data.status == 200) {
          stopLoading();
          print("Code Verify Successfully");
          ShowDialog("Congratulations", "${fetchChngPassResponse.message}",
              AppColors.GREEN_COLOR);
          Get.toNamed('/ChangePass');
        } else if (fetchChngPassResponse.data.status == 500) {
          stopLoading();
          ShowDialog("Message", "${fetchChngPassResponse.message}", Colors.red);
          res = fetchChngPassResponse.message;
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
