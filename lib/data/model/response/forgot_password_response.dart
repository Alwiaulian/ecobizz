
import 'package:ecobiz_mobile_flutter/data/model/others/response_object.dart';
import 'package:json_annotation/json_annotation.dart';

import 'error_handle_response.dart';
// part 'forgot_password_response.g.dart';
part 'forgot_password_response.g.dart';

@JsonSerializable(createToJson: false)
class ForgotPasswordResponse extends ResponseObject {
  @JsonKey(name: 'name')
  String name;
  @JsonKey(name: 'message')
  String? message;

  @JsonKey(name: 'status')
  int? status;

  @JsonKey(name: 'data')
  String? data;

  @JsonKey(name: 'error')
  ErrorHandleResponse? error;

  ForgotPasswordResponse({
    required this.name,
    this.message,
    this.status,
    this.data,
    this.error, 
  });

  factory ForgotPasswordResponse.fromJson(Map<String, dynamic> json) =>
      _$ForgotPasswordResponseFromJson(json);

  static get serializer => _$ForgotPasswordResponseFromJson;
}
