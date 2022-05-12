// To parse this JSON data, do
//
//     final categoryUsers = categoryUsersFromJson(jsonString);

import 'dart:convert';

CategoryUsers categoryUsersFromJson(String str) => CategoryUsers.fromJson(json.decode(str));

String categoryUsersToJson(CategoryUsers data) => json.encode(data.toJson());

class CategoryUsers {
    CategoryUsers({
       required this.name,
       required this.message,
       required this.status,
       required this.data,
    });

    String name;
    String message;
    int status;
    List<DataCategory> data;

    factory CategoryUsers.fromJson(Map<String, dynamic> json) => CategoryUsers(
        name: json["name"],
        message: json["message"],
        status: json["status"],
        data: List<DataCategory>.from(json["data"].map((x) => DataCategory.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "message": message,
        "status": status,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class DataCategory {
    DataCategory({
       required this.userCategoryId,
       required this.categoryName,
       required this.categoryStatus,
       required this.createdAt,
       required this.updatedAt,
    });

    int userCategoryId;
    String categoryName;
    int categoryStatus;
    DateTime createdAt;
    DateTime updatedAt;

    factory DataCategory.fromJson(Map<String, dynamic> json) => DataCategory(
        userCategoryId: json["user_category_id"],
        categoryName: json["category_name"],
        categoryStatus: json["category_status"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "user_category_id": userCategoryId,
        "category_name": categoryName,
        "category_status": categoryStatus,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
    };
}
