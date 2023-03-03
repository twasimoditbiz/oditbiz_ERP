import 'dart:convert';

List<LoginLocationModel> loginLocationModelFromJson(String str) =>
    List<LoginLocationModel>.from(
        json.decode(str).map((x) => LoginLocationModel.fromJson(x)));

String loginLocationModelToJson(List<LoginLocationModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class LoginLocationModel {
  LoginLocationModel({
    required this.glId,
    required this.glName,
  });

  String glId;
  String glName;

  factory LoginLocationModel.fromJson(Map<String, dynamic> json) =>
      LoginLocationModel(
        glId: json["gl_id"],
        glName: json["gl_name"],
      );

  Map<String, dynamic> toJson() => {
        "gl_id": glId,
        "gl_name": glName,
      };
}
