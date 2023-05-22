import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

class DataRepo {
  static const String _baseUrl = 'http://esptiles.imperoserver.in/api/API/';
  static const String _dashboardData = '${_baseUrl}Product/Dashboard';

  static Future<Map<String, dynamic>> getCategory() async {
    Map<String, dynamic> result = {};
    try {
      final Map<String, String> params = {
        "CategoryId": '0',
        "DeviceManufacturer": "Google",
        "DeviceModel": "Android SDK built for x86",
        "DeviceToken": " ",
        "PageIndex": '1'
      };
      final response = await http.post(Uri.parse(_dashboardData),
          headers: {HttpHeaders.contentTypeHeader: 'application/json'}, body: jsonEncode(params));
      // log(response.body);
      if (response.statusCode == 200) {
        result = jsonDecode(response.body);
      } else {
        throw jsonDecode(response.body);
      }
    } catch (e) {
      print(e.toString());
    }
    return result;
  }

  static Future<Map<String, dynamic>> getSubCategoryAndProduct(int categoryId, String pageIndex) async {
    Map<String, dynamic> result = {};
    try {
      final Map<String, dynamic> params = {"CategoryId": categoryId, "PageIndex": pageIndex};
      final response = await http.post(Uri.parse(_dashboardData),
          headers: {HttpHeaders.contentTypeHeader: 'application/json'}, body: jsonEncode(params));
      // log(response.body);
      if (response.statusCode == 200) {
        result = jsonDecode(response.body);
      } else {
        throw jsonDecode(response.body);
      }
    } catch (e) {
      print(e.toString());
    }
    return result;
  }
}
