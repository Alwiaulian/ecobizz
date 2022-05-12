import 'dart:convert';

class ForgotPasswordUserCache {
  String user_email;
  ForgotPasswordUserCache({
    required this.user_email,
   });

  Map<String, dynamic> toMap() {
    return {
      'user_email': user_email,
     };
  }

  factory ForgotPasswordUserCache.fromMap(Map<String, dynamic> map) {
    return ForgotPasswordUserCache(
      user_email: map['user_email'],
     );
  }

  String toJson() => json.encode(toMap());

  factory ForgotPasswordUserCache.fromJson(String source) =>
      ForgotPasswordUserCache.fromMap(json.decode(source));
}
