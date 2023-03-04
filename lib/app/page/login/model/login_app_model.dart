import 'dart:convert';

LoginAppModel loginAppModelFromJson(String str) =>
    LoginAppModel.fromJson(json.decode(str));

String loginAppModelToJson(LoginAppModel data) => json.encode(data.toJson());

class LoginAppModel {
  LoginAppModel({
    required this.clientId,
    required this.secret,
  });

  String clientId;
  String secret;

  factory LoginAppModel.fromJson(Map<String, dynamic> json) => LoginAppModel(
        clientId: json["clientId"],
        secret: json["secret"],
      );

  Map<String, dynamic> toJson() => {
        "clientId": clientId,
        "secret": secret,
      };
}
