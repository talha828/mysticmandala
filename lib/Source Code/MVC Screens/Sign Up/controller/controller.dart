import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../../Utils/appstrings.dart';
import '../../../utils/appcolors.dart';
import '../../../utils/showdialog.dart';
import '../model/model.dart';

class SignupController extends GetxController {
  //////////////////////////// FOR SIGN_UP ////////////////////////////////////////////
  Future<SignupModel?> CreateNewUser(String name, String lastname, String email,
      String Password, String number, String gender, String DOB) async {
    try {
      var data1 = {
        "address": " ",
        "city": " ",
        "class": "1",
        "dob": "",
        "email": email,
        "first_name": name,
        "gender": gender,
        "hidden_member_image": "",
        "last_name": lastname,
        "membership": "1",
        "membership_valid_from": "2022-12-10",
        "middle_name": "abc",
        "mobile": number,
        "password": Password,
        "role": "member",
        "staff_member": "",
        "state": "abc"
      };
      http.Response response = await http.post(
          Uri.parse(
              'https://mysticmandala.app/?gmgt_json_api=member_registration'),
          body: json.encode(data1));
      print(data1);
      print(response.body);
      var StoreSignUpData = jsonDecode(response.body);
      if (response.statusCode == 200) {
        var fetchSignUpResponse = SignupModel.fromJson(StoreSignUpData);
        print(fetchSignUpResponse.error);
        print(fetchSignUpResponse.status);
        // box.write("userId", fetchSignUpResponse.user.id);
        print("+++++++++++++++++++++++++");
        //  print(fetchSignUpResponse.user.id);
        ShowDialog("Congratulations", "Your Account is Created Successfully",
            AppColors.GREEN_COLOR);
        Get.toNamed('/Login');
      } else if (response.statusCode != 200) {
        print("MyMsg: ${StoreSignUpData['error']}");
        ShowDialog("ALERT", "${StoreSignUpData['error']}", Colors.red);
      }
    } catch (e) {
      print(e);
    }
  }
}
