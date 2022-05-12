


import 'package:ecobiz_mobile_flutter/data/model/others/response_object.dart';

import 'package:json_annotation/json_annotation.dart';

import 'error_handle_response.dart';
part 'register_response.g.dart';

@JsonSerializable(createToJson: false)
class RegisterResponse extends ResponseObject {
  @JsonKey(name: 'name')
  String name;
  @JsonKey(name: 'message')
  String? message;
  @JsonKey(name: 'tokens')
  String? tokens;
  @JsonKey(name: 'error')
  ErrorHandleResponse? error;

  RegisterResponse({
    required this.name,
    this.message,
    this.tokens,
    this.error,
  });

  factory RegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseFromJson(json);

  static get serializer => _$RegisterResponseFromJson;
}
