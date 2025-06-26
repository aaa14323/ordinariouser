import 'dart:convert';
import 'package:ordinariouser/models/user.dart';

class UserResponse {
  List<User> results;

  UserResponse({required this.results});

  factory UserResponse.fromRawJson(String str) =>
      UserResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UserResponse.fromJson(Map<String, dynamic> json) => UserResponse(
        results: List<User>.from(
          json["results"].map((x) => User.fromJson(x)),
        ),
      );

  Map<String, dynamic> toJson() => {
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
      };
}
