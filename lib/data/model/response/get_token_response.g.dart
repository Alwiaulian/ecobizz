// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_token_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetTokenResponse _$GetTokenResponseFromJson(Map<String, dynamic> json) =>
    GetTokenResponse(
      name: json['name'],
      tokens: json['tokens'] == null
          ? null
          : SubGetTokenResponse.fromMap(json['tokens'] as Map<String, dynamic>),
      error: json['error'] == null
          ? null
          : ErrorHandleResponse.fromMap(json['error'] as Map<String, dynamic>),
    );
