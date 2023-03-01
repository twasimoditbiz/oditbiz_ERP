import 'dart:convert';

List<LedgerReportModel> ledgerReportModelFromJson(String str) =>
    List<LedgerReportModel>.from(
        json.decode(str).map((x) => LedgerReportModel.fromJson(x)));

String ledgerReportModelToJson(List<LedgerReportModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

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
