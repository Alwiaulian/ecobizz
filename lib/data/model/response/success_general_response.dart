import 'dart:convert';
import 'package:ecobiz_mobile_flutter/data/model/others/response_object.dart';
import 'package:json_annotation/json_annotation.dart';
import 'error_handle_response.dart';
part 'success_general_response.g.dart';

@JsonSerializable(createToJson: false)
class SuccessGeneralResponse extends ResponseObject {
  @JsonKey(name: 'success')
  bool success;
  @JsonKey(name: 'data')
  dynamic data;
  @JsonKey(name: 'error')
  ErrorHandleResponse? error;

  SuccessGeneralResponse({
    required this.success,
    this.data,
    this.error,
  });

  factory SuccessGeneralResponse.fromJson(Map<String, dynamic> json) =>
      _$SuccessGeneralResponseFromJson(json);

  static get serializer => _$SuccessGeneralResponseFromJson;

  factory SuccessGeneralResponse.empty() {
    return SuccessGeneralResponse(success: false);
  }

  Map<String, dynamic> toMap() {
    return {
      'success': success,
      'data': data,
      'error': error?.toMap(),
    };
  }

  factory SuccessGeneralResponse.fromMap(Map<String, dynamic> map) {
    return SuccessGeneralResponse(
      success: map['success'] ?? false,
      data: map['data'] ?? null,
      error: map['error'] != null
          ? ErrorHandleResponse.fromMap(map['error'])
          : null,
    );
  }

  String toJson() => json.encode(toMap());
}
