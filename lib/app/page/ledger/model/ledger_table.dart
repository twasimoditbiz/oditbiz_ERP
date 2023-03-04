import 'dart:convert';
import 'dart:developer';

List<LedgerReportResponseModel> ledgerReportResponseModelFromJson(List data) {
  log(data.toString());
  return data.map((x) => LedgerReportResponseModel.fromJson(x)).toList();
}

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

  factory LedgerReportResponseModel.fromJson(dynamic json) =>
      LedgerReportResponseModel(
        entryNo: json["EntryNo"].toString(),
        invNo: json["InvNo"].toString(),
        dDate: json["DDate"].toString(),
        entryName: json["EntryName"].toString(),
        particulars: json["Particulars"].toString(),
        debit: json["Debit"].toString(),
        credit: json["Credit"].toString(),
        balance: json["Balance"].toString(),
        remarks: json["Remarks"].toString(),
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
