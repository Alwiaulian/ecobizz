import 'dart:convert';

class SubGetTokenResponse {
  String? accessToken;
  String? gender;
  String? refreshToken;
  String user_category;
  int user_id;
  int user_role_id;

  SubGetTokenResponse({
    this.accessToken,
     this.gender,
     this.refreshToken,
     required this.user_category,
    required this.user_id,
    required this.user_role_id,
  });
  Map<String, dynamic> toMap() {
    return {
      'accessToken': accessToken,
      'gender': gender,
      'refreshToken': refreshToken,
      'user_category': user_category,
      'user_id': user_id,
      'user_role_id': user_role_id,
    };
  }

  factory SubGetTokenResponse.fromMap(Map<String, dynamic> map) {
    return SubGetTokenResponse(
      accessToken: map['accessToken']??'',
      gender: map['gender']??'',
      refreshToken: map['refreshToken']??'',
      user_category: map['user_category'] ?? '',
      user_id: map['user_id'] ?? 0,
      user_role_id: map['user_role_id'] ?? 0,
      
    );
  }

  String toJson() => json.encode(toMap());

  factory SubGetTokenResponse.fromJson(String source) =>
      SubGetTokenResponse.fromMap(json.decode(source));
}
