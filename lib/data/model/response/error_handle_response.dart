import 'dart:convert';

class ErrorHandleResponse {
  int? code;
  String? message;
  ErrorHandleResponse({
    this.code,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return {
      'code': code,
      'message': message,
    };
  }

  factory ErrorHandleResponse.fromMap(Map<String, dynamic> map) {
    return ErrorHandleResponse(
      code: map['code'] ?? 0,
      message: map['message'] ?? "",
    );
  }

  String toJson() => json.encode(toMap());

  factory ErrorHandleResponse.fromJson(String source) =>
      ErrorHandleResponse.fromMap(json.decode(source));
}
