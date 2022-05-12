// To parse this JSON data, do
//
//     final getProvinces = getProvincesFromJson(jsonString);

import 'dart:convert';

GetProvinces getProvincesFromJson(String str) => GetProvinces.fromJson(json.decode(str));

String getProvincesToJson(GetProvinces data) => json.encode(data.toJson());

class GetProvinces {
    GetProvinces({
       required this.name,
       required this.message,
       required this.status,
       required this.data,
    });

    String name;
    String message;
    int status;
    List<DataProvinces> data;

    factory GetProvinces.fromJson(Map<String, dynamic> json) => GetProvinces(
        name: json["name"],
        message: json["message"],
        status: json["status"],
        data: List<DataProvinces>.from(json["data"].map((x) => DataProvinces.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "message": message,
        "status": status,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class DataProvinces {
    DataProvinces({
       required this.id,
       required this.name,
    });

    String id;
    String name;

    factory DataProvinces.fromJson(Map<String, dynamic> json) => DataProvinces(
        id: json["id"],
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
    };
}
