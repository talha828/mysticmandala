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

import '../../Login Page/controller/logincontroller.dart';
import '../../Username/model/usernamemodel.dart';

final Email = GetStorage();

class updatepassController extends GetxController {
  Future UpdatePass(String NewPassword) async {
    //  var res;
    try {
      showLoading();
      var Token = token.read('token');
      var Id = UserId.read('UserId');
      var NAME = FirstName.read("FirstName");
      var Last = LastName.read("LastName");
      var Userdata = {
        "access_token": Token,
        "address": " ",
        "birth_date": "",
        "city_name": " ",
        "confirm_password": NewPassword,
        "current_user_id": Id,
        "first_name": NAME,
        "last_name": Last,
        "member_id": Id,
        "mobile": " ",
        "new_password": NewPassword
      };
      http.Response response = await http.post(
          Uri.parse(
              'https://mysticmandala.app/?gmgt_json_api=update_member_profile'),
          body: json.encode(Userdata),
          headers: {"Authorization": 'Bearer $Token'});
      var UpdateSoreData = jsonDecode(response.body);
      print("User Data: " + UpdateSoreData.toString());
      print(response.statusCode);
      if (response.statusCode == 200) {
        stopLoading();
        var fetchUpdateResponse = UsernameModel.fromJson(UpdateSoreData);
        if (fetchUpdateResponse.errorCode == 200) {
          stopLoading();
          print("Profile Updated Successfully");
          ShowDialog("Congratulations", "${fetchUpdateResponse.error}",
              AppColors.GREEN_COLOR);
          FirstName.write("FirstName", fetchUpdateResponse.result.name);
          LastName.write("LastName", fetchUpdateResponse.result.lastName);
          Get.toNamed('/Home');
        } else if (fetchUpdateResponse.status == 500) {
          stopLoading();
          ShowDialog("Message", "${fetchUpdateResponse.errorCode}", Colors.red);
        }
        //   Get.toNamed('/Home');
      } else if (response.statusCode == 500) {
        stopLoading();
        print("Unauthorized User");
        ShowDialog("Message", "${UpdateSoreData['error']}", Colors.red);
      }
    } catch (e) {
      stopLoading();
      ShowDialog("Message", "Something went wrong", Colors.red);
    }
  }
}
