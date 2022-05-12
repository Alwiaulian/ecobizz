// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'success_general_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SuccessGeneralResponse _$SuccessGeneralResponseFromJson(
        Map<String, dynamic> json) =>
    SuccessGeneralResponse(
      success: json['success'] as bool,
      data: json['data'] == null ? null : json['data'],
      error: json['error'] == null
          ? null
          : ErrorHandleResponse.fromMap(json['error'] as Map<String, dynamic>),
    );
