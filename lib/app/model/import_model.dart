class ImportModel {
  String? ledger;
  String? group;
  String? location;
  String? category;
  String? brand;
  String? itemCode;
  String? itemName;
  String? subcategory;
  String? customer;
  String? salesman;
  String? area;
  String? district;
  String? salesType;
  String? cash;
  String? company;
  String? allSalesType;
  String? allRateType;
  String? android;
  String? allRoutes;
  String? permissions;
  String? gnlUsers;
  String? bank;
   String? company_;
  String? receivingcondition;
  String? servicetype;
  String? complaints;
  String? fixtype;
   String? workorderstatus;
  String? color;
  String? collecteditems;
  String? deliverystatus;
  String? formControls;

  ImportModel(
      {this.ledger,
      this.group,
      this.location,
      this.category,
      this.brand,
      this.itemCode,
      this.itemName,
      this.subcategory,
      this.customer,
      this.salesman,
      this.area,
      this.district,
      this.salesType,
      this.cash,
      this.company,
      this.allSalesType,
      this.allRateType,
      this.android,
      this.allRoutes,
      this.permissions,
      this.gnlUsers,
      this.bank,
      this.company_,
      this.receivingcondition,
      this.servicetype,
      this.complaints,
      this.fixtype,
      this.workorderstatus,
      this.color,
      this.collecteditems,
      this.deliverystatus,
      this.formControls});

  ImportModel.fromJson(Map<String, dynamic> json) {
    if (json['ledger'] != null) {
      ledger =   json['ledger'].toString();
    }
    if (json['group'] != null) {
      group = 
      json['group'].toString();
    }
    if (json['location'] != null) {
      location = 
      json['location'].toString();
    }
    if (json['category'] != null) {
      category = 
      json['category'].toString();
    }
    if (json['brand'] != null) {
      brand =
      json['brand'].toString();
    }
    if (json['itemCode'] != null) {
      itemCode = 
      json['itemCode'].toString();
    }
    if (json['itemName'] != null) {
      itemName =
      json['itemName'].toString();
    }
    if (json['subcategory'] != null) {
      subcategory =
      json['subcategory'].toString();
    }
    if (json['customer'] != null) {
      customer = 
      json['customer'].toString();
    }
    if (json['salesman'] != null) {
      salesman =
      json['salesman'].toString();
    }
    if (json['area'] != null) {
      area =
      json['area'].toString();
    }
    if (json['district'] != null) {
      district =
      json['district'].toString();
    }
    if (json['salesType'] != null) {
      salesType = 
      json['salesType'].toString();
    }
    if (json['cash'] != null) {
      cash =
      json['cash'].toString();
    }
    if (json['company'] != null) {
      company = 
      json['company'].toString();
    }
    if (json['allSalesType'] != null) {
      allSalesType = 
      json['allSalesType'].toString();
    }
    if (json['allRateType'] != null) {
      allRateType = 
      json['allRateType'].toString();
    }
    if (json['android'] != null) {
      android =
      json['android'].toString();
    }
    if (json['allRoutes'] != null) {
      allRoutes = 
      json['allRoutes'].toString();
    }
    if (json['permissions'] != null) {
      permissions =
      json['permissions'].toString();
    }
    if (json['gnl_users'] != null) {
      gnlUsers = 
      json['gnl_users'].toString();
    }
    if (json['bank'] != null) {
      bank = 
      json['bank'].toString();
    }
    if (json['company_'] != null) {
      company = 
      json['company_'].toString();
    }
    if (json['receivingcondition'] != null) {
      receivingcondition =
      json['receivingcondition'].toString();
    }
    if (json['servicetype'] != null) {
      servicetype = 
      json['servicetype'].toString();
    }
    if (json['complaints'] != null) {
      complaints = 
      json['complaints'].toString();
    }
    if (json['fixtype'] != null) {
      fixtype = 
      json['fixtype'].toString();
    }
    if (json['workorderstatus'] != null) {
      workorderstatus =
      json['workorderstatus'].toString();
    }
    if (json['color'] != null) {
      color =
      json['color'].toString();
    }
    if (json['collecteditems'] != null) {
      collecteditems = 
      json['collecteditems'].toString();
    }
    if (json['deliverystatus'] != null) {
      deliverystatus = 
      json['deliverystatus'].toString();
    }
    if (json['formControls'] != null) {
      formControls = 
      json['formControls'].toString();
    }
  }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   if (this.ledger != null) {
  //     data['ledger'] = this.ledger!.map((v) => v.toJson()).toList();
  //   }
  //   if (this.group != null) {
  //     data['group'] = this.group!.map((v) => v.toJson()).toList();
  //   }
  //   if (this.location != null) {
  //     data['location'] = this.location!.map((v) => v.toJson()).toList();
  //   }
  //   if (this.category != null) {
  //     data['category'] = this.category!.map((v) => v.toJson()).toList();
  //   }
  //   if (this.brand != null) {
  //     data['brand'] = this.brand!.map((v) => v.toJson()).toList();
  //   }
  //   if (this.itemCode != null) {
  //     data['itemCode'] = this.itemCode!.map((v) => v.toJson()).toList();
  //   }
  //   if (this.itemName != null) {
  //     data['itemName'] = this.itemName!.map((v) => v.toJson()).toList();
  //   }
  //   if (this.subcategory != null) {
  //     data['subcategory'] = this.subcategory!.map((v) => v.toJson()).toList();
  //   }
  //   if (this.customer != null) {
  //     data['customer'] = this.customer!.map((v) => v.toJson()).toList();
  //   }
  //   if (this.salesman != null) {
  //     data['salesman'] = this.salesman!.map((v) => v.toJson()).toList();
  //   }
  //   if (this.area != null) {
  //     data['area'] = this.area!.map((v) => v.toJson()).toList();
  //   }
  //   if (this.district != null) {
  //     data['district'] = this.district!.map((v) => v.toJson()).toList();
  //   }
  //   if (this.salesType != null) {
  //     data['salesType'] = this.salesType!.map((v) => v.toJson()).toList();
  //   }
  //   if (this.cash != null) {
  //     data['cash'] = this.cash!.map((v) => v.toJson()).toList();
  //   }
  //   if (this.company != null) {
  //     data['company'] = this.company!.map((v) => v.toJson()).toList();
  //   }
  //   if (this.allSalesType != null) {
  //     data['allSalesType'] = this.allSalesType!.map((v) => v.toJson()).toList();
  //   }
  //   if (this.allRateType != null) {
  //     data['allRateType'] = this.allRateType!.map((v) => v.toJson()).toList();
  //   }
  //   if (this.android != null) {
  //     data['android'] = this.android!.map((v) => v.toJson()).toList();
  //   }
  //   if (this.allRoutes != null) {
  //     data['allRoutes'] = this.allRoutes!.map((v) => v.toJson()).toList();
  //   }
  //   if (this.permissions != null) {
  //     data['permissions'] = this.permissions!.map((v) => v.toJson()).toList();
  //   }
  //   if (this.gnlUsers != null) {
  //     data['gnl_users'] = this.gnlUsers!.map((v) => v.toJson()).toList();
  //   }
  //   if (this.bank != null) {
  //     data['bank'] = this.bank!.map((v) => v.toJson()).toList();
  //   }
  //   if (this.company != null) {
  //     data['company_'] = this.company!.map((v) => v.toJson()).toList();
  //   }
  //   if (this.receivingcondition != null) {
  //     data['receivingcondition'] =
  //         this.receivingcondition!.map((v) => v.toJson()).toList();
  //   }
  //   if (this.servicetype != null) {
  //     data['servicetype'] = this.servicetype!.map((v) => v.toJson()).toList();
  //   }
  //   if (this.complaints != null) {
  //     data['complaints'] = this.complaints!.map((v) => v.toJson()).toList();
  //   }
  //   if (this.fixtype != null) {
  //     data['fixtype'] = this.fixtype!.map((v) => v.toJson()).toList();
  //   }
  //   if (this.workorderstatus != null) {
  //     data['workorderstatus'] =
  //         this.workorderstatus!.map((v) => v.toJson()).toList();
  //   }
  //   if (this.color != null) {
  //     data['color'] = this.color!.map((v) => v.toJson()).toList();
  //   }
  //   if (this.collecteditems != null) {
  //     data['collecteditems'] =
  //         this.collecteditems!.map((v) => v.toJson()).toList();
  //   }
  //   if (this.deliverystatus != null) {
  //     data['deliverystatus'] =
  //         this.deliverystatus!.map((v) => v.toJson()).toList();
  //   }
  //   if (this.formControls != null) {
  //     data['formControls'] = this.formControls!.map((v) => v.toJson()).toList();
  //   }
  //   return data;
  // }

}

class Ledger {
  String? label;
  int? value;

  Ledger({this.label, this.value});

  Ledger.fromJson(Map<String, dynamic> json) {
    label = json['label'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['label'] = this.label;
    data['value'] = this.value;
    return data;
  }
}

class Customer {
  String? label;
  int? value;
  String? asRateType;
  String? tin;

  Customer({this.label, this.value, this.asRateType, this.tin});

  Customer.fromJson(Map<String, dynamic> json) {
    label = json['label'];
    value = json['value'];
    asRateType = json['as_rate_type'];
    tin = json['tin'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['label'] = this.label;
    data['value'] = this.value;
    data['as_rate_type'] = this.asRateType;
    data['tin'] = this.tin;
    return data;
  }
}

class Company {
  int? comId;
  String? comCode;
  String? comName;
  String? comAdd1;
  String? comAdd2;
  String? comAdd3;
  String? comAdd4;
  String? comAdd5;
  String? comTelephone;
  String? comMob;
  String? comEmail;
  String? comGstin;
  String? comSdate;
  String? comEdate;
  String? comState;
  String? comStateCode;
  String? comBankac;
  String? comBankAccno;
  String? comBankIfsc;
  String? comRegDate;
  String? comAppdata;
  String? comNextDb;
  String? comComtype;
  String? comServer;
  String? comPass;
  String? comUser;
  String? comProductPrefix;
  String? comEsslPath;
  String? comLantime;
  int? comEsslMinHalfdayHrs;
  int? comEsslMinFulldayHrs;
  String? comCountry;
  String? comCountryCode;
  String? comCurrencyCode;
  String? comCurrencyMax;
  String? comCurrencyMin;
  String? comLocation;
  String? comTradeName;
  int? comPincode;
  int? comYdStatus;
  String? comYdDbName;
  String? comLogo;
  String? comArName;
  String? comArAdd1;
  String? comArAdd2;
  String? comArAdd3;
  String? comArMob;
  String? comArVat;

  Company(
      {this.comId,
      this.comCode,
      this.comName,
      this.comAdd1,
      this.comAdd2,
      this.comAdd3,
      this.comAdd4,
      this.comAdd5,
      this.comTelephone,
      this.comMob,
      this.comEmail,
      this.comGstin,
      this.comSdate,
      this.comEdate,
      this.comState,
      this.comStateCode,
      this.comBankac,
      this.comBankAccno,
      this.comBankIfsc,
      this.comRegDate,
      this.comAppdata,
      this.comNextDb,
      this.comComtype,
      this.comServer,
      this.comPass,
      this.comUser,
      this.comProductPrefix,
      this.comEsslPath,
      this.comLantime,
      this.comEsslMinHalfdayHrs,
      this.comEsslMinFulldayHrs,
      this.comCountry,
      this.comCountryCode,
      this.comCurrencyCode,
      this.comCurrencyMax,
      this.comCurrencyMin,
      this.comLocation,
      this.comTradeName,
      this.comPincode,
      this.comYdStatus,
      this.comYdDbName,
      this.comLogo,
      this.comArName,
      this.comArAdd1,
      this.comArAdd2,
      this.comArAdd3,
      this.comArMob,
      this.comArVat});

  Company.fromJson(Map<String, dynamic> json) {
    comId = json['com_id'];
    comCode = json['com_code'];
    comName = json['com_name'];
    comAdd1 = json['com_add1'];
    comAdd2 = json['com_add2'];
    comAdd3 = json['com_add3'];
    comAdd4 = json['com_add4'];
    comAdd5 = json['com_add5'];
    comTelephone = json['com_telephone'];
    comMob = json['com_mob'];
    comEmail = json['com_email'];
    comGstin = json['com_gstin'];
    comSdate = json['com_sdate'];
    comEdate = json['com_edate'];
    comState = json['com_state'];
    comStateCode = json['com_state_code'];
    comBankac = json['com_bankac'];
    comBankAccno = json['com_bank_accno'];
    comBankIfsc = json['com_bank_ifsc'];
    comRegDate = json['com_reg_date'];
    comAppdata = json['com_appdata'];
    comNextDb = json['com_next_db'];
    comComtype = json['com_comtype'];
    comServer = json['com_server'];
    comPass = json['com_pass'];
    comUser = json['com_user'];
    comProductPrefix = json['com_product_prefix'];
    comEsslPath = json['com_essl_path'];
    comLantime = json['com_lantime'];
    comEsslMinHalfdayHrs = json['com_essl_min_halfday_hrs'];
    comEsslMinFulldayHrs = json['com_essl_min_fullday_hrs'];
    comCountry = json['com_country'];
    comCountryCode = json['com_country_code'];
    comCurrencyCode = json['com_currency_code'];
    comCurrencyMax = json['com_currency_max'];
    comCurrencyMin = json['com_currency_min'];
    comLocation = json['com_location'];
    comTradeName = json['com_trade_name'];
    comPincode = json['com_pincode'];
    comYdStatus = json['com_yd_status'];
    comYdDbName = json['com_yd_db_name'];
    comLogo = json['com_logo'];
    comArName = json['com_ar_name'];
    comArAdd1 = json['com_ar_add1'];
    comArAdd2 = json['com_ar_add2'];
    comArAdd3 = json['com_ar_add3'];
    comArMob = json['com_ar_mob'];
    comArVat = json['com_ar_vat'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['com_id'] = this.comId;
    data['com_code'] = this.comCode;
    data['com_name'] = this.comName;
    data['com_add1'] = this.comAdd1;
    data['com_add2'] = this.comAdd2;
    data['com_add3'] = this.comAdd3;
    data['com_add4'] = this.comAdd4;
    data['com_add5'] = this.comAdd5;
    data['com_telephone'] = this.comTelephone;
    data['com_mob'] = this.comMob;
    data['com_email'] = this.comEmail;
    data['com_gstin'] = this.comGstin;
    data['com_sdate'] = this.comSdate;
    data['com_edate'] = this.comEdate;
    data['com_state'] = this.comState;
    data['com_state_code'] = this.comStateCode;
    data['com_bankac'] = this.comBankac;
    data['com_bank_accno'] = this.comBankAccno;
    data['com_bank_ifsc'] = this.comBankIfsc;
    data['com_reg_date'] = this.comRegDate;
    data['com_appdata'] = this.comAppdata;
    data['com_next_db'] = this.comNextDb;
    data['com_comtype'] = this.comComtype;
    data['com_server'] = this.comServer;
    data['com_pass'] = this.comPass;
    data['com_user'] = this.comUser;
    data['com_product_prefix'] = this.comProductPrefix;
    data['com_essl_path'] = this.comEsslPath;
    data['com_lantime'] = this.comLantime;
    data['com_essl_min_halfday_hrs'] = this.comEsslMinHalfdayHrs;
    data['com_essl_min_fullday_hrs'] = this.comEsslMinFulldayHrs;
    data['com_country'] = this.comCountry;
    data['com_country_code'] = this.comCountryCode;
    data['com_currency_code'] = this.comCurrencyCode;
    data['com_currency_max'] = this.comCurrencyMax;
    data['com_currency_min'] = this.comCurrencyMin;
    data['com_location'] = this.comLocation;
    data['com_trade_name'] = this.comTradeName;
    data['com_pincode'] = this.comPincode;
    data['com_yd_status'] = this.comYdStatus;
    data['com_yd_db_name'] = this.comYdDbName;
    data['com_logo'] = this.comLogo;
    data['com_ar_name'] = this.comArName;
    data['com_ar_add1'] = this.comArAdd1;
    data['com_ar_add2'] = this.comArAdd2;
    data['com_ar_add3'] = this.comArAdd3;
    data['com_ar_mob'] = this.comArMob;
    data['com_ar_vat'] = this.comArVat;
    return data;
  }
}

class AllSalesType {
  int? strId;
  String? strName;
  String? strRateType;
  int? strAccId;
  String? strTransferTo;

  AllSalesType(
      {this.strId,
      this.strName,
      this.strRateType,
      this.strAccId,
      this.strTransferTo});

  AllSalesType.fromJson(Map<String, dynamic> json) {
    strId = json['str_id'];
    strName = json['str_name'];
    strRateType = json['str_rate_type'];
    strAccId = json['str_acc_id'];
    strTransferTo = json['str_transfer_to'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['str_id'] = this.strId;
    data['str_name'] = this.strName;
    data['str_rate_type'] = this.strRateType;
    data['str_acc_id'] = this.strAccId;
    data['str_transfer_to'] = this.strTransferTo;
    return data;
  }
}

class AllRateType {
  int? value;
  String? label;
  String? rtName;

  AllRateType({this.value, this.label, this.rtName});

  AllRateType.fromJson(Map<String, dynamic> json) {
    value = json['value'];
    label = json['label'];
    rtName = json['rt_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['value'] = this.value;
    data['label'] = this.label;
    data['rt_name'] = this.rtName;
    return data;
  }
}

class Android {
  int? ansId;
  String? ansName;
  String? ansStatus;

  Android({this.ansId, this.ansName, this.ansStatus});

  Android.fromJson(Map<String, dynamic> json) {
    ansId = json['ans_id'];
    ansName = json['ans_name'];
    ansStatus = json['ans_status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ans_id'] = this.ansId;
    data['ans_name'] = this.ansName;
    data['ans_status'] = this.ansStatus;
    return data;
  }
}

class Deliverystatus {
  String? label;
  String? value;

  Deliverystatus({this.label, this.value});

  Deliverystatus.fromJson(Map<String, dynamic> json) {
    label = json['label'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['label'] = this.label;
    data['value'] = this.value;
    return data;
  }
}
