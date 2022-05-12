import 'dart:convert';

class RegisterRequest {
  String? user_category;
  String user_email;
  int? user_mobile_number;
  String? user_name;
  String user_password;
  RegisterRequest({
    this.user_category,
    required this.user_email,
    this.user_mobile_number,
    this.user_name,
    required this.user_password,
  });

  Map<String, dynamic> toMap() {
    return {
      'user_category': user_category,
      'user_email': user_email,
      'user_mobile_number': user_mobile_number,
      'user_name': user_name,
      'user_password': user_password,
    };
  }

  factory RegisterRequest.fromMap(Map<String, dynamic> map) {
    return RegisterRequest(
      user_category: map['user_category'] ?? '',
      user_email: map['user_email'] ?? '',
      user_mobile_number: map['user_mobile_number'] ?? '',
      user_name: map['user_name'] ?? '',
      user_password: map['user_password'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory RegisterRequest.fromJson(String source) =>
      RegisterRequest.fromMap(json.decode(source));
}
