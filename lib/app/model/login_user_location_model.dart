class LoginLocationModel {
  String? glId;
  String? glName;

  LoginLocationModel({this.glId, this.glName});

  LoginLocationModel.fromJson(Map<String, dynamic> json) {
      glId = json['gl_id'];
      glName = json['gl_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['gl_id'] = this.glId;
    data['gl_name'] = this.glName;
    return data;
  }
}
