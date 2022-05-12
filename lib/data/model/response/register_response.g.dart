// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterResponse _$RegisterResponseFromJson(Map<String, dynamic> json) =>
    RegisterResponse(
      name: json['name'],
      tokens: json['tokens'] ,
      // == null
      //     ? null
      //     :
          //  SubRegisterResponse.fromMap(json['tokens'] as Map<String, dynamic>),
      error: json['error'] == null
          ? null
          : ErrorHandleResponse.fromMap(json['error'] as Map<String, dynamic>),
    );
