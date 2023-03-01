import 'package:flutter/material.dart';

List<DataColumn> createColumns() {
  const textStyle = TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.white,
    fontSize: 12,
  );
  return [
    const DataColumn(
      label: Text(
        'EntryNo',
        style: textStyle,
      ),
    ),
    const DataColumn(
      label: Text(
        'InvNo',
        style: textStyle,
      ),
    ),
    const DataColumn(
      label: Text(
        'DDate',
        style: textStyle,
      ),
    ),
    const DataColumn(
      label: Text(
        'EntryName',
        style: textStyle,
      ),
    ),
    const DataColumn(
      label: Text(
        "Particulars",
        style: textStyle,
      ),
    ),
    const DataColumn(
      label: Text(
        "Debit",
        style: textStyle,
      ),
    ),
    const DataColumn(
      label: Text(
        "Credit",
        style: textStyle,
      ),
    ),
    const DataColumn(
      label: Text(
        "Balance",
        style: textStyle,
      ),
    ),
    const DataColumn(
      label: Text(
        "Remark",
        style: textStyle,
      ),
    ),
  ];
}
