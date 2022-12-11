import 'package:get/get.dart';
import 'package:flutter/material.dart';

void ShowDialog(String Mytitle, String Mymsg, Color Textcolor) {
  Get.snackbar(
    Mytitle,
    Mymsg,
    backgroundColor: Colors.white,
    colorText: Textcolor,
    margin: EdgeInsets.all(8),
    titleText: Text(
      Mytitle,
      style: TextStyle(
          fontSize: 16.0, fontWeight: FontWeight.bold, color: Textcolor),
    ),
    messageText: Text(
      Mymsg,
      style: TextStyle(
          fontSize: 14.0, fontWeight: FontWeight.bold, color: Textcolor),
    ),
  );
}
