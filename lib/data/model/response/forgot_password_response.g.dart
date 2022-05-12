// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forgot_password_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************


ForgotPasswordResponse _$ForgotPasswordResponseFromJson(Map<String, dynamic> json) =>
    ForgotPasswordResponse(
      name: json['name'],

      message: json['message'],
      status: json['status'],
      data: json['data'],
      error: json['error'] == null
          ? null
          : ErrorHandleResponse.fromMap(json['error'] as Map<String, dynamic>),
    );
