import 'dart:io';

import 'package:ecobiz_mobile_flutter/app/modules/after_register_1/controllers/model_category_users.dart';
import 'package:ecobiz_mobile_flutter/data/data_source/urls.dart';

import 'package:http/http.dart' as http;
class RemoteSevice {
  static Future<CategoryUsers?> getCategoryUsers() async {
    var response = await http.get(
        Uri.parse('${BaseUrl.baseUrl}${Urls.categoryUsers}'),
        headers: {
          HttpHeaders.contentTypeHeader: 'application/json',
          // HttpHeaders.authorizationHeader: token,
        });

    // print('Banner list data ${response.statusCode}');

    if (response.statusCode >= 200) {
      var categoryUsers = categoryUsersFromJson(response.body);
      return categoryUsers;
    }
  }
}