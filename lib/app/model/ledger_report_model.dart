import 'dart:convert';

LedgerReportModel ledgerReportFromJson(String str) =>
    LedgerReportModel.fromJson(json.decode(str));

String ledgerReportToJson(LedgerReportModel data) => json.encode(data.toJson());

class LedgerReportModel {
  LedgerReportModel({
    required this.asId,
    required this.fromDate,
    required this.toDate,
    required this.ledgerExcludePending,
  });

  int asId;
  String fromDate;
  String toDate;
  bool ledgerExcludePending;

  factory LedgerReportModel.fromJson(Map<String, dynamic> json) =>
      LedgerReportModel(
        asId: json["asId"],
        fromDate: json["fromDate"],
        toDate: json["toDate"],
        ledgerExcludePending: json["ledgerExcludePending"],
      );

  Map<String, dynamic> toJson() => {
        "asId": asId,
        "fromDate": fromDate,
        "toDate": toDate,
        "ledgerExcludePending": ledgerExcludePending,
      };
}
