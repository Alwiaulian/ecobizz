import 'dart:convert';
import 'dart:io';
import 'package:ecobiz_mobile_flutter/const/duration_timeout.dart';
import 'package:ecobiz_mobile_flutter/data/model/others/handle_failure.dart';
import 'package:ecobiz_mobile_flutter/data/model/others/response_object.dart';
import 'package:ecobiz_mobile_flutter/data/model/others/tupple.dart';
import 'package:ecobiz_mobile_flutter/data/model/others/tupple_handle_status.dart';
import 'package:http/http.dart' as http;

class GetDataApi {
  GetDataApi._privateConstructor();

  static final GetDataApi _instance = GetDataApi._privateConstructor();

  static GetDataApi get getInstance => _instance;

  Future<Tupple<HandleFailure, ResponseObject>> getdataAPI({
    required String baseUrl,
    required String endPoint,
    required Map<String, dynamic> nullSafety,
    required ResponseObject Function(Map<String, dynamic>) serializer,
  }) async {
    try {
      var responseResult = await http
          .get(Uri.parse(baseUrl + endPoint))
          .timeout(const Duration(seconds: DurationTimeOut.durationRTO));

      var handleResponseStatus =
          handleResponseStatusCode(responseResult.statusCode);
      if (handleResponseStatus.status!) {
        return Tupple(
            handleFailure: handleResponseStatus.handleFailure,
            onSuccess: serializer(
                jsonDecode(responseResult.body) as Map<String, dynamic>));
      } else {
        return Tupple(
            handleFailure: handleResponseStatus.handleFailure,
            onSuccess: serializer(nullSafety));
      }
    } on Exception catch (_) {
      return Tupple(
          handleFailure: HandleFailure(), onSuccess: serializer(nullSafety));
    }
  }

  Future<Tupple<HandleFailure, ResponseObject>> getdataAPIHeaders({
    required String baseUrl,
    required String endPoint,
    required Map<String, String> headers,
    required Map<String, dynamic> nullSafety,
    required ResponseObject Function(Map<String, dynamic>) serializer,
  }) async {
    try {
      var responseResult = await http
          .get(Uri.parse(baseUrl + endPoint), headers: headers)
          .timeout(const Duration(seconds: DurationTimeOut.durationRTO));
      var handleResponseStatus =
          handleResponseStatusCode(responseResult.statusCode);
      if (handleResponseStatus.status!) {
        return Tupple(
            handleFailure: handleResponseStatus.handleFailure,
            onSuccess: serializer(
                jsonDecode(responseResult.body) as Map<String, dynamic>));
      } else {
        return Tupple(
            handleFailure: handleResponseStatus.handleFailure,
            onSuccess: serializer(nullSafety));
      }
    } on Exception catch (_) {
      return Tupple(
          handleFailure: HandleFailure(), onSuccess: serializer(nullSafety));
    }

    // return Tupple(
    //     handleFailure: HandleFailure(), onSuccess: serializer(nullSafety));
  }

  Future<Tupple<HandleFailure, ResponseObject>> postdataAPIHeadersBody({
    required String baseUrl,
    required String endPoint,
    required Map<String, String> headers,
    required Map<String, dynamic> bodyObject,
    required Map<String, dynamic> nullSafety,
    required ResponseObject Function(Map<String, dynamic>) serializer,
  }) async {
    try {
      var responseResult = await http
          .post(Uri.parse(baseUrl + endPoint),
              headers: headers, body: json.encode(bodyObject))
          .timeout(const Duration(seconds: DurationTimeOut.durationRTO));

      var handleResponseStatus =
          handleResponseStatusCode(responseResult.statusCode);
      if (handleResponseStatus.status!) {
        return Tupple(
            handleFailure: handleResponseStatus.handleFailure,
            onSuccess: serializer(
                jsonDecode(responseResult.body) as Map<String, dynamic>));
      } else {
        return Tupple(
            handleFailure: handleResponseStatus.handleFailure,
            onSuccess: serializer(nullSafety));
      }
    } on Exception catch (_) {
      return Tupple(
          handleFailure: HandleFailure(), onSuccess: serializer(nullSafety));
    }

    // return Tupple(
    //     handleFailure: HandleFailure(), onSuccess: serializer(nullSafety));
  }

  Future<Tupple<HandleFailure, ResponseObject>> postdataAPIHeadersBodyList({
    required String baseUrl,
    required String endPoint,
    required Map<String, String> headers,
    required List<dynamic> bodyObject,
    required Map<String, dynamic> nullSafety,
    required ResponseObject Function(Map<String, dynamic>) serializer,
  }) async {
    try {
      print([bodyObject]);
      var responseResult = await http
          .post(Uri.parse(baseUrl + endPoint),
              headers: headers, body: bodyObject as List<Map<String, dynamic>>)
          .timeout(const Duration(seconds: DurationTimeOut.durationRTO));

      var handleResponseStatus =
          handleResponseStatusCode(responseResult.statusCode);
      if (handleResponseStatus.status!) {
        return Tupple(
            handleFailure: handleResponseStatus.handleFailure,
            onSuccess: serializer(
                jsonDecode(responseResult.body) as Map<String, dynamic>));
      } else {
        return Tupple(
            handleFailure: handleResponseStatus.handleFailure,
            onSuccess: serializer(nullSafety));
      }
    } on Exception catch (_) {
      return Tupple(
          handleFailure: HandleFailure(), onSuccess: serializer(nullSafety));
    }
  }

  Future<Tupple<HandleFailure, ResponseObject>> postdataAPIBody({
    required String baseUrl,
    required String endPoint,
    required Map<String, dynamic> bodyObject,
    required Map<String, dynamic> nullSafety,
    required ResponseObject Function(Map<String, dynamic>) serializer,
  }) async {
    try {
      var responseResult = await http
          .post(Uri.parse(baseUrl + endPoint), body: json.encode(bodyObject))
          .timeout(const Duration(seconds: DurationTimeOut.durationRTO));
      var handleResponseStatus =
          handleResponseStatusCode(responseResult.statusCode);
      if (handleResponseStatus.status!) {
        return Tupple(
            handleFailure: handleResponseStatus.handleFailure,
            onSuccess: serializer(
                jsonDecode(responseResult.body) as Map<String, dynamic>));
      } else {
        return Tupple(
            handleFailure: handleResponseStatus.handleFailure,
            onSuccess: serializer(nullSafety));
      }
    } on Exception catch (_) {
      return Tupple(
          handleFailure: HandleFailure(), onSuccess: serializer(nullSafety));
    }
  }

  Future<Tupple<HandleFailure, ResponseObject>> postdataAPIHeadersWithFile({
    required String baseUrl,
    required String endPoint,
    required Map<String, String> headers,
    required File file,
    required String fileName,
    // required Map<String, String> bodyObject,
    required Map<String, dynamic> nullSafety,
    required ResponseObject Function(Map<String, dynamic>) serializer,
  }) async {
    try {
      var length = await file.length();

      http.MultipartRequest request =
          new http.MultipartRequest('POST', Uri.parse(baseUrl + endPoint))
            // ..fields.addAll(bodyObject)
            ..headers.addAll(headers)
            ..files.add(
              // replace file with your field name exampe: image
              http.MultipartFile('file', file.openRead(), length,
                  filename: fileName),
            );

      var responseResult = await http.Response.fromStream(await request.send())
          .timeout(const Duration(seconds: DurationTimeOut.durationRTO));

      var handleResponseStatus =
          handleResponseStatusCode(responseResult.statusCode);
      if (handleResponseStatus.status!) {
        return Tupple(
            handleFailure: handleResponseStatus.handleFailure,
            onSuccess: serializer(
                jsonDecode(responseResult.body) as Map<String, dynamic>));
      } else {
        return Tupple(
            handleFailure: handleResponseStatus.handleFailure,
            onSuccess: serializer(nullSafety));
      }
    } on Exception catch (_) {
      return Tupple(
          handleFailure: HandleFailure(), onSuccess: serializer(nullSafety));
    }

    // return Tupple(
    //     handleFailure: HandleFailure(), onSuccess: serializer(nullSafety));
  }

  Future<Tupple<HandleFailure, ResponseObject>> postdataAPI({
    required String baseUrl,
    required String endPoint,
    required Map<String, dynamic> nullSafety,
    required ResponseObject Function(Map<String, dynamic>) serializer,
  }) async {
    try {
      var responseResult = await http
          .post(Uri.parse(baseUrl + endPoint))
          .timeout(const Duration(seconds: DurationTimeOut.durationRTO));
      var handleResponseStatus =
          handleResponseStatusCode(responseResult.statusCode);
      if (handleResponseStatus.status!) {
        return Tupple(
            handleFailure: handleResponseStatus.handleFailure,
            onSuccess: serializer(
                jsonDecode(responseResult.body) as Map<String, dynamic>));
      } else {
        return Tupple(
            handleFailure: handleResponseStatus.handleFailure,
            onSuccess: serializer(nullSafety));
      }
    } on Exception catch (_) {
      return Tupple(
          handleFailure: HandleFailure(), onSuccess: serializer(nullSafety));
    }
  }

  Future<Tupple<HandleFailure, ResponseObject>> postdataAPIHeaders({
    required String baseUrl,
    required String endPoint,
    required Map<String, String> headers,
    required Map<String, dynamic> nullSafety,
    required ResponseObject Function(Map<String, dynamic>) serializer,
  }) async {
    try {
      var responseResult = await http
          .post(Uri.parse(baseUrl + endPoint), headers: headers)
          .timeout(const Duration(seconds: DurationTimeOut.durationRTO));
      var handleResponseStatus =
          handleResponseStatusCode(responseResult.statusCode);
      if (handleResponseStatus.status!) {
        return Tupple(
            handleFailure: handleResponseStatus.handleFailure,
            onSuccess: serializer(
                jsonDecode(responseResult.body) as Map<String, dynamic>));
      } else {
        return Tupple(
            handleFailure: handleResponseStatus.handleFailure,
            onSuccess: serializer(nullSafety));
      }
    } on Exception catch (_) {
      return Tupple(
          handleFailure: HandleFailure(), onSuccess: serializer(nullSafety));
    }
  }

  Future<Tupple<HandleFailure, ResponseObject>> putDataAPIHeadersBody({
    required String baseUrl,
    required String endPoint,
    required Map<String, String> headers,
    required Map<String, dynamic> bodyObject,
    required Map<String, dynamic> nullSafety,
    required ResponseObject Function(Map<String, dynamic>) serializer,
  }) async {
    try {
      var responseResult = await http
          .put(Uri.parse(baseUrl + endPoint),
              headers: headers, body: json.encode(bodyObject))
          .timeout(const Duration(seconds: DurationTimeOut.durationRTO));
      var handleResponseStatus =
          handleResponseStatusCode(responseResult.statusCode);
      if (handleResponseStatus.status!) {
        return Tupple(
            handleFailure: handleResponseStatus.handleFailure,
            onSuccess: serializer(
                jsonDecode(responseResult.body) as Map<String, dynamic>));
      } else {
        return Tupple(
            handleFailure: handleResponseStatus.handleFailure,
            onSuccess: serializer(nullSafety));
      }
    } on Exception catch (_) {
      return Tupple(
          handleFailure: HandleFailure(), onSuccess: serializer(nullSafety));
    }

    // return Tupple(
    //     handleFailure: HandleFailure(), onSuccess: serializer(nullSafety));
  }

  Future<Tupple<HandleFailure, ResponseObject>> postdataAPIBodyWithoutSSL({
    required String baseUrl,
    required String endPoint,
    required Map<String, dynamic> bodyObject,
    required Map<String, dynamic> nullSafety,
    required ResponseObject Function(Map<String, dynamic>) serializer,
  }) async {
    try {
      HttpClient client = new HttpClient();
      client.badCertificateCallback =
          ((X509Certificate cert, String host, int port) => true);

      HttpClientRequest request = await client
          .postUrl(Uri.parse(baseUrl + endPoint))
          .timeout(const Duration(seconds: DurationTimeOut.durationRTO));
      request.headers.set('content-type', 'application/json');
      request.add(utf8.encode(json.encode(bodyObject)));
      HttpClientResponse responseResult = await request.close();

      var handleResponseStatus =
          handleResponseStatusCode(responseResult.statusCode);
      if (handleResponseStatus.status!) {
        return Tupple(
            handleFailure: HandleFailure(statusCode: 404, message: ""),
            onSuccess: serializer(
                jsonDecode(await responseResult.transform(utf8.decoder).join())
                    as Map<String, dynamic>));
      } else {
        return Tupple(
            handleFailure: handleResponseStatus.handleFailure,
            onSuccess: serializer(nullSafety));
      }
    } on Exception catch (_) {
      return Tupple(
          handleFailure: HandleFailure(), onSuccess: serializer(nullSafety));
    }
  }

  Future<Tupple<HandleFailure, ResponseObject>> putdataAPIHeaders({
    required String baseUrl,
    required String endPoint,
    required Map<String, String> headers,
    required Map<String, dynamic> nullSafety,
    required ResponseObject Function(Map<String, dynamic>) serializer,
  }) async {
    try {
      var responseResult = await http
          .put(Uri.parse(baseUrl + endPoint), headers: headers)
          .timeout(const Duration(seconds: DurationTimeOut.durationRTO));
      var handleResponseStatus =
          handleResponseStatusCode(responseResult.statusCode);
      if (handleResponseStatus.status!) {
        return Tupple(
            handleFailure: handleResponseStatus.handleFailure,
            onSuccess: serializer(
                jsonDecode(responseResult.body) as Map<String, dynamic>));
      } else {
        return Tupple(
            handleFailure: handleResponseStatus.handleFailure,
            onSuccess: serializer(nullSafety));
      }
    } on Exception catch (_) {
      return Tupple(
          handleFailure: HandleFailure(), onSuccess: serializer(nullSafety));
    }
  }

  Future<Tupple<HandleFailure, ResponseObject>> deleteDataAPIHeaders({
    required String baseUrl,
    required String endPoint,
    required Map<String, String> headers,
    required Map<String, dynamic> nullSafety,
    required ResponseObject Function(Map<String, dynamic>) serializer,
  }) async {
    try {
      var responseResult = await http
          .delete(Uri.parse(baseUrl + endPoint), headers: headers)
          .timeout(const Duration(seconds: DurationTimeOut.durationRTO));
      var handleResponseStatus =
          handleResponseStatusCode(responseResult.statusCode);
      if (handleResponseStatus.status!) {
        return Tupple(
            handleFailure: handleResponseStatus.handleFailure,
            onSuccess: serializer(
                jsonDecode(responseResult.body) as Map<String, dynamic>));
      } else {
        return Tupple(
            handleFailure: handleResponseStatus.handleFailure,
            onSuccess: serializer(nullSafety));
      }
    } on Exception catch (_) {
      return Tupple(
          handleFailure: HandleFailure(), onSuccess: serializer(nullSafety));
    }
  }

  TuppleHandleStatusCode<bool, HandleFailure> handleResponseStatusCode(
      int statusCode) {
    switch (statusCode) {
      case 200:
        return TuppleHandleStatusCode(
          status: true,
          handleFailure: HandleFailure(message: "OK", statusCode: 200),
        );
      case 201:
        return TuppleHandleStatusCode(
          status: true,
          handleFailure: HandleFailure(message: "OK", statusCode: 201),
        );
      case 401:
        return TuppleHandleStatusCode(
          status: true,
          handleFailure:
              HandleFailure(message: "Unauthorized", statusCode: 401),
        );
      case 403:
        return TuppleHandleStatusCode(
          status: false,
          handleFailure: HandleFailure(message: "Forbidden", statusCode: 403),
        );
      case 404:
        return TuppleHandleStatusCode(
          status: false,
          handleFailure: HandleFailure(message: "Not Found", statusCode: 404),
        );
      case 409:
        return TuppleHandleStatusCode(
          status: false,
          handleFailure: HandleFailure(message: "Conflict", statusCode: 409),
        );
      case 504:
        return TuppleHandleStatusCode(
          status: false,
          handleFailure:
              HandleFailure(message: "Gateway Timeout", statusCode: 504),
        );
      case 503:
        return TuppleHandleStatusCode(
          status: false,
          handleFailure:
              HandleFailure(message: "Service Unavailable", statusCode: 503),
        );
      case 502:
        return TuppleHandleStatusCode(
          status: false,
          handleFailure: HandleFailure(message: "Bad Gateway", statusCode: 502),
        );
      case 500:
        return TuppleHandleStatusCode(
          status: false,
          handleFailure:
              HandleFailure(message: "Internal Server Error", statusCode: 500),
        );
      case 499:
        return TuppleHandleStatusCode(
          status: false,
          handleFailure:
              HandleFailure(message: "Client Closed Request", statusCode: 499),
        );
      case 429:
        return TuppleHandleStatusCode(
          status: false,
          handleFailure:
              HandleFailure(message: "Too Many Request", statusCode: 429),
        );
      case 413:
        return TuppleHandleStatusCode(
          status: false,
          handleFailure:
              HandleFailure(message: "Payload Too Large", statusCode: 413),
        );
      case 412:
        return TuppleHandleStatusCode(
          status: false,
          handleFailure:
              HandleFailure(message: "Precondition Failed", statusCode: 412),
        );
      case 411:
        return TuppleHandleStatusCode(
          status: false,
          handleFailure:
              HandleFailure(message: "Length Required", statusCode: 411),
        );
      case 410:
        return TuppleHandleStatusCode(
          status: false,
          handleFailure: HandleFailure(message: "Gone", statusCode: 410),
        );
      case 405:
        return TuppleHandleStatusCode(
          status: false,
          handleFailure: HandleFailure(message: "Conflict", statusCode: 405),
        );
      case 400:
        return TuppleHandleStatusCode(
          status: false,
          handleFailure: HandleFailure(message: "Bad Request", statusCode: 400),
        );
      default:
        return TuppleHandleStatusCode(status: false, handleFailure: null);
    }
  }
}
