import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../../utils/appcolors.dart';
import '../../../utils/showdialog.dart';
import '../../Login Page/controller/logincontroller.dart';
import 'package:mysticmandala/Source Code/MVC Screens/logout/model/model.dart';

class LogoutController extends GetxController {
  Future Logout() async {
    String ReceiveToken = token.read("token");
    try {
      http.Response response = await http.post(
          Uri.parse('https://mysticmandala.app/?gmgt_json_api=user_logout'),
          body: {},
          headers: {
            'Authorization': 'Bearer $ReceiveToken',
          });
      var LogoutData = jsonDecode(response.body);
      if (response.statusCode == 200) {
        var fetchLogoutRes = logoutModel.fromJson(LogoutData);
        print(fetchLogoutRes.status);
        print(fetchLogoutRes.error);
        token.remove('token');
        ShowDialog("Message", "${fetchLogoutRes.error}", AppColors.GREEN_COLOR);
        Get.offAllNamed('/Login');
      } else if (response.statusCode != 200) {
        print("MyMsg: ${LogoutData['error']}");
      }
    } catch (e) {
      print(e);
    }
  }
}
