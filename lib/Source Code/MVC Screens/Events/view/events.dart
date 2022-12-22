import 'dart:convert';

import 'package:http/http.dart' as http;

class Events {
  String baseUrl = "https://mysticmandala.app/wp-json/wc-bookings/v1/products";
  Future<List> getAllEvents() async {
    try {
      var response = await http.get(Uri.parse(baseUrl));
      print(response);
      if (response.statusCode == 200) {
        print(jsonDecode(response.body).toString());
        var data = jsonDecode(response.body.toString());
        return data;
      } else {
        return Future.error("Server-Error");
      }
    } catch (e) {
      return Future.error("Server Fetching Error");
    }
  }
}
