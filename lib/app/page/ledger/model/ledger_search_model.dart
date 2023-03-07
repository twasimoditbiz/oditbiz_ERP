import 'dart:convert';

List<LedgerSearchModel> ledgerSearchModelFromJson(String str) =>
    List<LedgerSearchModel>.from(
        json.decode(str).map((x) => LedgerSearchModel.fromJson(x)));

String ledgerSearchModelToJson(List<LedgerSearchModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class LedgerSearchModel {
  LedgerSearchModel({
    required this.label,
    required this.value,
    required this.asRateType,
    required this.tin,
  });

  String label;
  double value;
  String asRateType;
  String tin;

  factory LedgerSearchModel.fromJson(Map<String, dynamic> json) =>
      LedgerSearchModel(
        label: json["label"],
        value: json["value"],
        asRateType: json["as_rate_type"],
        tin: json["tin"],
      );

  Map<String, dynamic> toJson() => {
        "label": label,
        "value": value,
        "as_rate_type": asRateType,
        "tin": tin,
      };
}
