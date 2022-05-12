import 'dart:convert';

class LoginUserCache {
  String user_email;
  String user_password;
  bool isChecked;
  LoginUserCache({
    required this.user_email,
    required this.user_password,
    required this.isChecked,
  });

  Map<String, dynamic> toMap() {
    return {
      'user_email': user_email,
      'user_password': user_password,
      'isChecked': isChecked,
    };
  }

  factory LoginUserCache.fromMap(Map<String, dynamic> map) {
    return LoginUserCache(
      user_email: map['user_email'],
      user_password: map['user_password'],
      isChecked: map['isChecked'],
    );
  }

  String toJson() => json.encode(toMap());

  factory LoginUserCache.fromJson(String source) =>
      LoginUserCache.fromMap(json.decode(source));
}
