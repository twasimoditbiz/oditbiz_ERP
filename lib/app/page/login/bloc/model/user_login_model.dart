class UserLoginModel {
  String? token;
  String? expiration;
  bool? status;
  User? user;
  String? userRole;
  String? android;
  String? salesMan;
  String? cashAccount;
  String? erpType;

  UserLoginModel(
      {this.token,
      this.expiration,
      this.status,
      this.user,
      this.userRole,
      this.android,
      this.salesMan,
      this.cashAccount,
      this.erpType});

  UserLoginModel.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    expiration = json['expiration'];
    status = json['status'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    userRole = json['user_role'];
    android = json['android'];
    salesMan = json['sales_man'];
    cashAccount = json['cash_account'];
    erpType = json['erp_type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = this.token;
    data['expiration'] = this.expiration;
    data['status'] = this.status;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    data['user_role'] = this.userRole;
    data['android'] = this.android;
    data['sales_man'] = this.salesMan;
    data['cash_account'] = this.cashAccount;
    data['erp_type'] = this.erpType;
    return data;
  }
}

class User {
  String? guUserId;
  String? guName;
  String? guLocationId;
  String? glName;
  String? role;
  String? taxCalc;
  String? guAccId;

  User(
      {this.guUserId,
      this.guName,
      this.guLocationId,
      this.glName,
      this.role,
      this.taxCalc,
      this.guAccId});

  User.fromJson(Map<String, dynamic> json) {
    guUserId = json['gu_user_id'];
    guName = json['gu_name'];
    guLocationId = json['gu_location_id'];
    glName = json['gl_name'];
    role = json['role'];
    taxCalc = json['tax_calc'];
    guAccId = json['gu_acc_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['gu_user_id'] = this.guUserId;
    data['gu_name'] = this.guName;
    data['gu_location_id'] = this.guLocationId;
    data['gl_name'] = this.glName;
    data['role'] = this.role;
    data['tax_calc'] = this.taxCalc;
    data['gu_acc_id'] = this.guAccId;
    return data;
  }
}
