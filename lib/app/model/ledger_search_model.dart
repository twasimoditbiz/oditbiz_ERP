// import 'dart:convert';

// List<LedgerSearch> ledgerSearchFromJson(String str) => List<LedgerSearch>.from(
//     json.decode(str).map((x) => LedgerSearch.fromJson(x)));

// String ledgerSearchToJson(List<LedgerSearch> data) =>
//     json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

// class LedgerSearch {
//   LedgerSearch({
//     required this.label,
//     required this.value,
//     required this.asRateType,
//     required this.tin,
//   });

//   String label;
//   double value;
//   String asRateType;
//   String tin;

//   factory LedgerSearch.fromJson(Map<String, dynamic> json) => LedgerSearch(
//         label: json["label"],
//         value: json["value"],
//         asRateType: json["as_rate_type"],
//         tin: json["tin"],
//       );

//   Map<String, dynamic> toJson() => {
//         "label": label,
//         "value": value,
//         "as_rate_type": asRateType,
//         "tin": tin,
//       };
// }
import 'dart:convert';

List<LedgerSearch> ledgerSearchFromJson(String str) => List<LedgerSearch>.from(
    json.decode(str).map((x) => LedgerSearch.fromJson(x)));

String ledgerSearchToJson(List<LedgerSearch> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class LedgerSearch {
  LedgerSearch({
    required this.label,
    required this.value,
    required this.asRateType,
    required this.tin,
  });

  String label;
  double value;
  String asRateType;
  String tin;

  factory LedgerSearch.fromJson(Map<String, dynamic> json) => LedgerSearch(
        label: json["label"],
        value: json["value"],
        asRateType: json["as_rate_type"],
        tin: json["tin"],
      );

  Map<String, dynamic> toJson() => {
        "label": label,
        "value": value.toInt(),
        "as_rate_type": asRateType,
        "tin": tin,
      };
}
