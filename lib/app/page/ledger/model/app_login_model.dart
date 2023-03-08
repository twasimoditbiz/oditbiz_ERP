class AppLoginModel {
  String? token;
  bool? status;

  AppLoginModel({this.token, this.status});

  AppLoginModel.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = this.token;
    data['status'] = this.status;
    return data;
  }
}
