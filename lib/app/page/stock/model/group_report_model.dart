

import 'dart:convert';

List<GropReportModel> gropReportModelFromJson(String str) =>
    List<GropReportModel>.from(
        json.decode(str).map((x) => GropReportModel.fromJson(x)));

String gropReportModelToJson(List<GropReportModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GropReportModel {
  dynamic particulars;
  dynamic address1;
  dynamic address2;
  dynamic contact;
  dynamic openingDr;
  dynamic openingCr;
  dynamic debit;
  dynamic credit;
  dynamic closingDr;
  dynamic closingCr;
  dynamic asId;
  dynamic salesman;
  dynamic rout;
  dynamic openingBalance;
  dynamic closingBalance;

  GropReportModel(
      {this.particulars,
      this.address1,
      this.address2,
      this.contact,
      this.openingDr,
      this.openingCr,
      this.debit,
      this.credit,
      this.closingDr,
      this.closingCr,
      this.asId,
      this.salesman,
      this.rout,
      this.openingBalance,
      this.closingBalance});

  GropReportModel.fromJson(Map<String, dynamic> json) {
    particulars = json['Particulars'];
    address1 = json['Address1'];
    address2 = json['Address2'];
    contact = json['Contact'];
    openingDr = json['OpeningDr'];
    openingCr = json['OpeningCr'];
    debit = json['Debit'];
    credit = json['Credit'];
    closingDr = json['ClosingDr'];
    closingCr = json['ClosingCr'];
    asId = json['as_id'];
    salesman = json['Salesman'];
    rout = json['Rout'];
    openingBalance = json['OpeningBalance'];
    closingBalance = json['ClosingBalance'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Particulars'] = this.particulars;
    data['Address1'] = this.address1;
    data['Address2'] = this.address2;
    data['Contact'] = this.contact;
    data['OpeningDr'] = this.openingDr;
    data['OpeningCr'] = this.openingCr;
    data['Debit'] = this.debit;
    data['Credit'] = this.credit;
    data['ClosingDr'] = this.closingDr;
    data['ClosingCr'] = this.closingCr;
    data['as_id'] = this.asId;
    data['Salesman'] = this.salesman;
    data['Rout'] = this.rout;
    data['OpeningBalance'] = this.openingBalance;
    data['ClosingBalance'] = this.closingBalance;
    return data;
  }
}

class GropReportPostData {
  dynamic statementType;
  dynamic asId;
  dynamic fromDate;
  dynamic routeId;
  dynamic salesManId;
  dynamic toDate;

  GropReportPostData(
      {this.statementType,
      this.asId,
      this.fromDate,
      this.routeId,
      this.salesManId,
      this.toDate});

  GropReportPostData.fromJson(Map<String, dynamic> json) {
    statementType = json['StatementType'];
    asId = json['asId'];
    fromDate = json['fromDate'];
    routeId = json['routeId'];
    salesManId = json['salesManId'];
    toDate = json['toDate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['StatementType'] = this.statementType;
    data['asId'] = this.asId;
    data['fromDate'] = this.fromDate;
    data['routeId'] = this.routeId;
    data['salesManId'] = this.salesManId;
    data['toDate'] = this.toDate;
    return data;
  }
}
