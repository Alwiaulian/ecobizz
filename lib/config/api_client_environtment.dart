import 'dart:io';
import 'package:ecobiz_mobile_flutter/data/data_source/urls.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class ApiClientEnvironment extends GetxService {
  String _baseUrl = BaseUrl.baseUrl;
  // String _headerDev = BaseUrl.baseUrlDev;

  String get baseUrl => _baseUrl;

  final headers = {
    HttpHeaders.contentTypeHeader: "application/json",
  };

  // (String baseUrl, String header){
  //   this.baseUrl = baseUrl;
  //   this.header = header;
  // }

}
