import 'dart:convert';

LoginUserModel loginUserModelFromJson(String str) =>
    LoginUserModel.fromJson(json.decode(str));

String loginUserModelToJson(LoginUserModel data) => json.encode(data.toJson());

class LoginUserModel {
  LoginUserModel({
    required this.username,
    required this.password,
    required this.location,
    required this.area,
    required this.macId,
  });

  String username;
  String password;
  String location;
  String area;
  String macId;

  factory LoginUserModel.fromJson(Map<String, dynamic> json) => LoginUserModel(
        username: json["username"],
        password: json["password"],
        location: json["location"],
        area: json["area"],
        macId: json["macId"],
      );

  Map<String, dynamic> toJson() => {
        "username": username,
        "password": password,
        "location": location,
        "area": area,
        "macId": macId,
      };
}
