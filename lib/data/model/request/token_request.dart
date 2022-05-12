import 'dart:convert';

class TokenRequest {
  String user_email;
  String user_password;
  TokenRequest({
    required this.user_email,
    required this.user_password,
  });

  Map<String, dynamic> toMap() {
    return {
      'user_email': user_email,
      'user_password': user_password,
    };
  }

  factory TokenRequest.fromMap(Map<String, dynamic> map) {
    return TokenRequest(
      user_email: map['user_email']??'',
      user_password: map['user_password']??'',
    );
  }

  String toJson() => json.encode(toMap());

  factory TokenRequest.fromJson(String source) =>
      TokenRequest.fromMap(json.decode(source));
}
