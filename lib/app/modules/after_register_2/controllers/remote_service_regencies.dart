import 'dart:io';

import 'package:ecobiz_mobile_flutter/app/modules/after_register_2/controllers/model_provinces.dart';
import 'package:ecobiz_mobile_flutter/app/modules/after_register_2/controllers/model_regencies.dart';
import 'package:ecobiz_mobile_flutter/data/data_source/urls.dart';

import 'package:http/http.dart' as http;
class RemoteSeviceRegencies {
  static Future<GetRegencies?> getRegencies() async {
    var response = await http.get(
        Uri.parse('${BaseUrl.baseUrl}${Urls.getAllRegencies}'),
        headers: {
          HttpHeaders.contentTypeHeader: 'application/json',
          // HttpHeaders.authorizationHeader: token,
        });

    // print('Banner list data ${response.statusCode}');

    if (response.statusCode >= 200) {
      var getAllRegencies = getRegenciesFromJson(response.body);
      return getAllRegencies;
    }
  }
}