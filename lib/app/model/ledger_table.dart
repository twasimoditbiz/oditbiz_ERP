import 'dart:convert';

LedgerTable ledgerTableFromJson(String str) =>
    LedgerTable.fromJson(json.decode(str));

String ledgerTableToJson(LedgerTable data) => json.encode(data.toJson());

class LedgerTable {
  LedgerTable({
    required this.table,
    required this.table1,
  });

  List<dynamic> table;
  List<Map<String, String>> table1;

  factory LedgerTable.fromJson(Map<String, dynamic> json) => LedgerTable(
        table: List<dynamic>.from(json["table"].map((x) => x)),
        table1: List<Map<String, String>>.from(json["table1"].map(
            (x) => Map.from(x).map((k, v) => MapEntry<String, String>(k, v)))),
      );

  Map<String, dynamic> toJson() => {
        "table": List<dynamic>.from(table.map((x) => x)),
        "table1": List<dynamic>.from(table1.map(
            (x) => Map.from(x).map((k, v) => MapEntry<String, dynamic>(k, v)))),
      };
}
