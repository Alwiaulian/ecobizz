import 'dart:convert';

class RegisterUserCache {
  String user_email;
  int user_mobile_number;
  String user_password;
  bool isChecked;
  RegisterUserCache({
    required this.user_email,
    required this.user_mobile_number,
    required this.user_password,
    required this.isChecked,
  });

  Map<String, dynamic> toMap() {
    return {
      'user_email': user_email,
      'user_mobile_number': user_mobile_number,
      'user_password': user_password,
      'isChecked': isChecked,
    };
  }

  factory RegisterUserCache.fromMap(Map<String, dynamic> map) {
    return RegisterUserCache(
      user_email: map['user_email'],
      user_mobile_number: map['user_mobile_number'],
      user_password: map['user_password'],
      isChecked: map['isChecked'],
    );
  }

  String toJson() => json.encode(toMap());

  factory RegisterUserCache.fromJson(String source) =>
      RegisterUserCache.fromMap(json.decode(source));
}
