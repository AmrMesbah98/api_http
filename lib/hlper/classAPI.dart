import 'dart:convert';

import 'package:http/http.dart' as http;

class API {
  static Future<dynamic> get({required String url, String? token}) async {
    Map<String, String> header = {};

    if (token != null) {
      header.addAll({'Authorization': 'Bearer ${token}'});
    }

    http.Response response = await http.get(Uri.parse(url), headers: header);

    if (response.statusCode == 20) {
      return jsonDecode(response.body);
    } else {
      throw Exception('you have Error in statusCode ${response.statusCode}');
    }
  }

  static Future<dynamic> post(
      {required String url, required dynamic body, String? token}) async {
    Map<String, String> header = {};

    if (token != null) {
      header.addAll({'Authorization': 'Bearer ${token}'});
    }

    http.Response response =
        await http.post(Uri.parse(url), body: body, headers: header);

    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);

      return data;
    } else {
      throw Exception(
          'you have error ${response.statusCode} with body ${jsonDecode(response.body)}');
    }
  }

  static Future<dynamic> put(
      {required String url, required dynamic body, String? token}) async {
    Map<String, String> header = {};
    header.addAll({'Content-Type': 'application/x-www-form-urlencoded'});

    if (token != null) {
      header.addAll({'Authorization': 'Bearer ${token}'});
    }

    http.Response response =
        await http.post(Uri.parse(url), body: body, headers: header);

    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);

      return data;
    } else {
      throw Exception(
          'you have error ${response.statusCode} with body ${jsonDecode(response.body)}');
    }
  }
}
