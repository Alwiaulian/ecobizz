// To parserequired this JSON data, do
//
//     final getMe = getMeFromJson(jsonString);

import 'dart:convert';

GetMe getMeFromJson(String str) => GetMe.fromJson(json.decode(str));

String getMeToJson(GetMe data) => json.encode(data.toJson());

class GetMe {
    GetMe({
       required this.name,
       required this.message,
       required this.status,
       required this.data,
    });

    String name;
    String message;
    int status;
    List<DataProfile> data;

    factory GetMe.fromJson(Map<String, dynamic> json) => GetMe(
        name: json["name"],
        message: json["message"],
        status: json["status"],
        data: List<DataProfile>.from(json["data"].map((x) => DataProfile.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "message": message,
        "status": status,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class DataProfile {
    DataProfile({
       required this.userId,
       required this.userName,
       required this.userEmail,
       required this.userCategory,
       required this.userPassword,
       required this.userVerified,
       required this.userRememberToken,
       required this.uniqueCode,
       required this.userAvatar,
       required this.userKtp,
       required this.idKtp,
       required this.gender,
       required this.placeBirth,
       required this.birthOfDate,
       required this.userAddress,
       required this.userMobileNumber,
       required this.userDescription,
       required this.userRoleId,
       required this.whatsappNumber,
       required this.facebookId,
       required this.twitterId,
       required this.province,
       required this.instagramId,
       required this.createdAt,
       required this.updatedAt,
       required this.regencies,
       required this.villages,
       required this.districts,
       required this.userActive,
    });

    int userId;
    String userName;
    String userEmail;
    String userCategory;
    String userPassword;
    int userVerified;
    dynamic userRememberToken;
    dynamic uniqueCode;
    dynamic userAvatar;
    dynamic userKtp;
    dynamic idKtp;
    dynamic gender;
    dynamic placeBirth;
    dynamic birthOfDate;
    dynamic userAddress;
    String userMobileNumber;
    dynamic userDescription;
    int userRoleId;
    String whatsappNumber;
    String facebookId;
    String twitterId;
    dynamic province;
    dynamic instagramId;
    dynamic createdAt;
    dynamic updatedAt;
    dynamic regencies;
    dynamic villages;
    dynamic districts;
    int userActive;

    factory DataProfile.fromJson(Map<String, dynamic> json) => DataProfile(
        userId: json["user_id"],
        userName: json["user_name"],
        userEmail: json["user_email"],
        userCategory: json["user_category"],
        userPassword: json["user_password"],
        userVerified: json["user_verified"],
        userRememberToken: json["user_remember_token"],
        uniqueCode: json["unique_code"],
        userAvatar: json["user_avatar"],
        userKtp: json["user_ktp"],
        idKtp: json["id_ktp"],
        gender: json["gender"],
        placeBirth: json["place_birth"],
        birthOfDate: json["birth_of_date"],
        userAddress: json["user_address"],
        userMobileNumber: json["user_mobile_number"],
        userDescription: json["user_description"],
        userRoleId: json["user_role_id"],
        whatsappNumber: json["whatsapp_number"],
        facebookId: json["facebook_id"],
        twitterId: json["twitter_id"],
        province: json["province"],
        instagramId: json["instagram_id"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        regencies: json["regencies"],
        villages: json["villages"],
        districts: json["districts"],
        userActive: json["user_active"],
    );

    Map<String, dynamic> toJson() => {
        "user_id": userId,
        "user_name": userName,
        "user_email": userEmail,
        "user_category": userCategory,
        "user_password": userPassword,
        "user_verified": userVerified,
        "user_remember_token": userRememberToken,
        "unique_code": uniqueCode,
        "user_avatar": userAvatar,
        "user_ktp": userKtp,
        "id_ktp": idKtp,
        "gender": gender,
        "place_birth": placeBirth,
        "birth_of_date": birthOfDate,
        "user_address": userAddress,
        "user_mobile_number": userMobileNumber,
        "user_description": userDescription,
        "user_role_id": userRoleId,
        "whatsapp_number": whatsappNumber,
        "facebook_id": facebookId,
        "twitter_id": twitterId,
        "province": province,
        "instagram_id": instagramId,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "regencies": regencies,
        "villages": villages,
        "districts": districts,
        "user_active": userActive,
    };
}
