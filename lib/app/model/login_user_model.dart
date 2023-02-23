import 'dart:convert';

LoginUserModel loginUserModelFromJson(String str) =>
    LoginUserModel.fromJson(json.decode(str));

String loginUserModelToJson(LoginUserModel data) => json.encode(data.toJson());

class LoginUserModel {
  LoginUserModel({
    required this.username,
    required this.password,
    required this.location,
  });

  String username;
  String password;
  String location;

  factory LoginUserModel.fromJson(Map<String, dynamic> json) => LoginUserModel(
        username: json["username"],
        password: json["password"],
        location: json["location"],
      );

  Map<String, dynamic> toJson() => {
        "username": username,
        "password": password,
        "location": location,
      };
}
