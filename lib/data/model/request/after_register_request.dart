// To parse this JSON data, do
//
//     final afterRegisterRequest = afterRegisterRequestFromJson(jsonString);

import 'dart:convert';

AfterRegisterRequest afterRegisterRequestFromJson(String str) => AfterRegisterRequest.fromJson(json.decode(str));

String afterRegisterRequestToJson(AfterRegisterRequest data) => json.encode(data.toJson());

class AfterRegisterRequest {
    AfterRegisterRequest({
        this.birthOfDate,
        this.districts,
        this.gender,
        this.idKtp,
        this.password,
        this.placeBirth,
        this.province,
        this.regencies,
        this.userAddress,
        this.userAvatar,
        this.userAvatarUpdate,
        this.userCategory,
        this.userDescription,
        this.userEmail,
        this.userId,
        this.userKtp,
        this.userKtpUpdate,
        this.userMobileNumber,
        this.userName,
        this.villages,
    });

    String? birthOfDate;
    String ? districts;
    String ? gender;
    String ? idKtp;
    String ? password;
    String ? placeBirth;
    String ? province;
    String ? regencies;
    String ? userAddress;
    dynamic  userAvatar;
    bool ? userAvatarUpdate;
    String ? userCategory;
    String ? userDescription;
    String ? userEmail;
    int? userId;
    dynamic userKtp;
    bool ? userKtpUpdate;
    String ? userMobileNumber;
    String ? userName;
    String ? villages;

    factory AfterRegisterRequest.fromJson(Map<String, dynamic> json) => AfterRegisterRequest(
        birthOfDate: json['birth_of_date'],
        districts: json["districts"],
        gender: json["gender"],
        idKtp: json["id_ktp"],
        password: json["password"],
        placeBirth: json["place_birth"],
        province: json["province"],
        regencies: json["regencies"],
        userAddress: json["user_address"],
        userAvatar: json["user_avatar"],
        userAvatarUpdate: json["user_avatar_update"],
        userCategory: json["user_category"],
        userDescription: json["user_description"],
        userEmail: json["user_email"],
        userId: json["user_id"],
        userKtp: json["user_ktp"],
        userKtpUpdate: json["user_ktp_update"],
        userMobileNumber: json["user_mobile_number"],
        userName: json["user_name"],
        villages: json["villages"],
    );

    Map<String, dynamic> toJson() => {
        "birth_of_date": birthOfDate,
        "districts": districts,
        "gender": gender,
        "id_ktp": idKtp,
        "password": password,
        "place_birth": placeBirth,
        "province": province,
        "regencies": regencies,
        "user_address": userAddress,
        "user_avatar": userAvatar,
        "user_avatar_update": userAvatarUpdate,
        "user_category": userCategory,
        "user_description": userDescription,
        "user_email": userEmail,
        "user_id": userId,
        "user_ktp": userKtp,
        "user_ktp_update": userKtpUpdate,
        "user_mobile_number": userMobileNumber,
        "user_name": userName,
        "villages": villages,
    };
}
