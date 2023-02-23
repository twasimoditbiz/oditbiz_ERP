import 'dart:convert';

List<LedgerReportResponseModel> ledgerReportResponseModelFromJson(String str) =>
    List<LedgerReportResponseModel>.from(
        json.decode(str).map((x) => LedgerReportResponseModel.fromJson(x)));

String ledgerReportResponseModelToJson(List<LedgerReportResponseModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class LedgerReportResponseModel {
  LedgerReportResponseModel({
    required this.entryNo,
    required this.invNo,
    required this.dDate,
    required this.entryName,
    required this.particulars,
    required this.debit,
    required this.credit,
    required this.balance,
    required this.remarks,
  });

  String entryNo;
  String invNo;
  String dDate;
  String entryName;
  String particulars;
  String debit;
  String credit;
  String balance;
  String remarks;

  factory LedgerReportResponseModel.fromJson(Map<String, dynamic> json) =>
      LedgerReportResponseModel(
        entryNo: json["EntryNo"],
        invNo: json["InvNo"],
        dDate: json["DDate"],
        entryName: json["EntryName"],
        particulars: json["Particulars"],
        debit: json["Debit"],
        credit: json["Credit"],
        balance: json["Balance"],
        remarks: json["Remarks"],
      );

  Map<String, dynamic> toJson() => {
        "EntryNo": entryNo,
        "InvNo": invNo,
        "DDate": dDate,
        "EntryName": entryName,
        "Particulars": particulars,
        "Debit": debit,
        "Credit": credit,
        "Balance": balance,
        "Remarks": remarks,
      };
}
