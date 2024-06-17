import 'package:fomo/models/models.dart';

class User {
  final String? username;
  final String? id;
  final String? password;
  final String email;

  User({this.username, this.id, this.password, required this.email});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(username: json["username"], id: json["id"], email: json["email"]);
  }

  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'password': password,
      'email': email,
    };
  }
}