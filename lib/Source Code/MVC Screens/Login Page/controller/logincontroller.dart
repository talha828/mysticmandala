import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get_storage/get_storage.dart';

import '../../../Utils/appstrings.dart';
import '../../../utils/appcolors.dart';
import '../../../utils/showdialog.dart';
import '../model/loginmodel.dart';
import 'package:http/http.dart' as http;

final FirstName = GetStorage();
final LastName = GetStorage();
final UserEmail = GetStorage();
final UserImage = GetStorage();
final token = GetStorage();

class AuthController extends GetxController {
  Future LoginUser(String LogUserEmail, String LogUserPassword) async {
    try {
      var data = {
        'password': LogUserPassword,
        'username': LogUserEmail,
      };
      http.Response response = await http.post(
          Uri.parse('https://mysticmandala.app/?gmgt_json_api=user_login'),
          body: json.encode(data));
      var LoginStoreData = jsonDecode(response.body);
      print("User Data: " + LoginStoreData.toString());
      print(response.statusCode);
      if (response.statusCode == 200) {
        var fetchLoginResponse = loginmodel.fromJson(LoginStoreData);
        print("name " + fetchLoginResponse.result.firstName);
        print("email " + fetchLoginResponse.result.email);
        print("Image " + fetchLoginResponse.result.image);
        if (fetchLoginResponse.errorCode == 200) {
          print("Login Successfully");
          Get.toNamed('/Home');
          FirstName.write("FirstName", fetchLoginResponse.result.firstName);
          LastName.write("LastName", fetchLoginResponse.result.lastName);
          UserEmail.write("UserEmail", fetchLoginResponse.result.email);
          UserImage.write("UserImage", fetchLoginResponse.result.image);
          token.write("token", fetchLoginResponse.result.accessToken);
          ShowDialog("Congratulations", "${fetchLoginResponse.error}",
              AppColors.GREEN_COLOR);
        } else if (fetchLoginResponse.errorCode == 401) {
          ShowDialog("Message", "Please Create An Account", Colors.red);
        }
        //   Get.toNamed('/Home');
      } else if (response.statusCode == 401) {
        print("Unauthorized User");
        ShowDialog("Message", "Please Create An Account", Colors.red);
      }
    } catch (e) {
      print(e);
    }
  }
}
