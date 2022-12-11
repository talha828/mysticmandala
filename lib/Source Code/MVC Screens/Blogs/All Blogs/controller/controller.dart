// import 'dart:convert';
//
// import 'package:flutter/material.dart';
//
// import 'package:http/http.dart' as http;
//
// void fetchContent() async {
//   try {
//     final response = await http
//         .get(Uri.parse('https://mysticmandala.app/wp-json/wp/v2/posts'));
//     print(response.body);
//     var StoreContentData = jsonDecode(response.body);
//     print("response: " + StoreContentData.toString());
//     if (response.statusCode == 200) {
//       print(response.statusCode);
//       return PrivacyPolicy.fromJson(StoreContentData);
//     } else if (response.statusCode != 200) {
//       ShowDialog(AppStrings.ALERT_TEXT, "Failed to load Content",
//           AppColors.GREEN_COLOR);
//       throw Exception('Failed to load Content');
//     }
//   } catch (e) {
//     print(e);
//   }
//   return throw ('No Data Available');
// }
