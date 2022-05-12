// To parse this JSON data, do
//
//     final getRegencies = getRegenciesFromJson(jsonString);

import 'dart:convert';

GetRegencies getRegenciesFromJson(String str) => GetRegencies.fromJson(json.decode(str));

String getRegenciesToJson(GetRegencies data) => json.encode(data.toJson());

class GetRegencies {
    GetRegencies({
       required this.name,
       required this.message,
       required this.status,
       required this.data,
    });

    String name;
    String message;
    int status;
    List<DataRegencies> data;

    factory GetRegencies.fromJson(Map<String, dynamic> json) => GetRegencies(
        name: json["name"],
        message: json["message"],
        status: json["status"],
        data: List<DataRegencies>.from(json["data"].map((x) => DataRegencies.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "message": message,
        "status": status,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class DataRegencies {
    DataRegencies({
       required this.id,
       required this.provinceId,
       required this.name,
    });

    String id;
    String provinceId;
    String name;

    factory DataRegencies.fromJson(Map<String, dynamic> json) => DataRegencies(
        id: json["id"],
        provinceId: json["province_id"],
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "province_id": provinceId,
        "name": name,
    };
}
