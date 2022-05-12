
import 'package:ecobiz_mobile_flutter/data/model/others/response_object.dart';
import 'package:ecobiz_mobile_flutter/data/model/response/sub_get_token_response.dart';
import 'package:json_annotation/json_annotation.dart';

import 'error_handle_response.dart';
part 'get_token_response.g.dart';

@JsonSerializable(createToJson: false)
class GetTokenResponse extends ResponseObject {
  @JsonKey(name: 'name')
  String name;
  @JsonKey(name: 'message')
  String? message;
  @JsonKey(name: 'tokens')
  SubGetTokenResponse? tokens;
  @JsonKey(name: 'error')
  ErrorHandleResponse? error;

  GetTokenResponse({
    required this.name,
    this.message,
    this.tokens,
    this.error,
  });

  factory GetTokenResponse.fromJson(Map<String, dynamic> json) =>
      _$GetTokenResponseFromJson(json);

  static get serializer => _$GetTokenResponseFromJson;
}
