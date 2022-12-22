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
import '../model/loginmodel.dart';
import 'package:http/http.dart' as http;

final FirstName = GetStorage();
final LastName = GetStorage();
final UserEmail = GetStorage();
final UserImage = GetStorage();
final DisplayName = GetStorage();
final City = GetStorage();
final Address = GetStorage();
final token = GetStorage();
final UserId = GetStorage();

class AuthController extends GetxController {
  Future LoginUser(String LogUserEmail, String LogUserPassword) async {
    var res;
    try {
      showLoading();
      var data = {
        'password': LogUserPassword,
        'username': LogUserEmail,
      };
      http.Response response = await http.post(
          Uri.parse('https://mysticmandala.app/?gmgt_json_api=user_login'),
          body: json.encode(data));
      var LoginStoreData = jsonDecode(response.body);
      print("User Data: " + LoginStoreData.toString());
      res = LoginStoreData['error'];
      print(response.statusCode);
      if (response.statusCode == 200) {
        stopLoading();
        var fetchLoginResponse = loginmodel.fromJson(LoginStoreData);
        print("name " + fetchLoginResponse.result.firstName);
        print("email " + fetchLoginResponse.result.email);
        print("Image " + fetchLoginResponse.result.image);
        if (fetchLoginResponse.errorCode == 200) {
          stopLoading();
          print("Login Successfully");
          Get.toNamed('/Home');
          DisplayName.write(
              "DisplayName", fetchLoginResponse.result.displayName);
          FirstName.write("FirstName", fetchLoginResponse.result.firstName);
          LastName.write("LastName", fetchLoginResponse.result.lastName);
          UserEmail.write("UserEmail", fetchLoginResponse.result.email);
          UserImage.write("UserImage", fetchLoginResponse.result.image);
          UserId.write("UserId", fetchLoginResponse.result.id);
          //   City.write("City", fetchLoginResponse.result.cityName);
          //     Address.write("Address", fetchLoginResponse.result.address);
          token.write("token", fetchLoginResponse.result.accessToken);
          print(fetchLoginResponse.result.accessToken);
          // ShowDialog("Congratulations", "${fetchLoginResponse.error}",
          //     AppColors.GREEN_COLOR);
        } else if (fetchLoginResponse.errorCode == 401) {
          stopLoading();
          ShowDialog("Message", "${fetchLoginResponse.error}", Colors.red);
          res = fetchLoginResponse.error;
        }
        //   Get.toNamed('/Home');
      } else if (response.statusCode == 401) {
        stopLoading();
        print("Unauthorized User");
        ShowDialog("Message", "Unauthorized User", Colors.red);
      }
    } catch (e) {
      stopLoading();
      ShowDialog("Message", "${res}", Colors.red);
    }
  }
}
