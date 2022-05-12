import 'dart:convert';

class ForgotPasswordRequest {
  String user_email;
  ForgotPasswordRequest({
    required this.user_email,
  });

  Map<String, dynamic> toMap() {
    return {
      'user_email': user_email,
    };
  }

  factory ForgotPasswordRequest.fromMap(Map<String, dynamic> map) {
    return ForgotPasswordRequest(
      user_email: map['user_email']??'',
    );
  }

  String toJson() => json.encode(toMap());

  factory ForgotPasswordRequest.fromJson(String source) =>
      ForgotPasswordRequest.fromMap(json.decode(source));
}
