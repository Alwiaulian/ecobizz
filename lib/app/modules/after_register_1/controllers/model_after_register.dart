// To parse this JSON data, do
//
//     final afterRegister = afterRegisterFromJson(jsonString);

import 'dart:convert';

AfterRegister afterRegisterFromJson(String str) =>
    AfterRegister.fromJson(json.decode(str));

String afterRegisterToJson(AfterRegister data) => json.encode(data.toJson());

class AfterRegister {
  AfterRegister({
    required this.name,
    this.message,
    required this.status,
    this.data,
  });

  String name;
  dynamic message;
  int status;
  dynamic data;
  factory AfterRegister.fromJson(Map<String, dynamic> json) => AfterRegister(
        name: json["name"],
        message: json["message"],
        status: json["status"],
        data: json["data"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "message": message,
        "status": status,
        "data": data,
      };
}
