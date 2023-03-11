import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oditbiz/app/page/group/bloc/group_report/group_report_cubit.dart';
import 'package:oditbiz/app/page/group/model/group_report_model.dart';
import 'package:oditbiz/app/page/reports/custom_data_table.dart';
import 'package:oditbiz/app/resources/pref_resources.dart';

class GroupReportTable extends StatefulWidget {
  final List<Map<String, dynamic>> data;
  final String statementType;
  GroupReportTable({required this.data, required this.statementType});
  @override
  _GroupReportTableState createState() => _GroupReportTableState();
}

class _GroupReportTableState extends State<GroupReportTable> {
  List<String> _columns = [];

  int _rowsPerPage = 10;
  int _sortColumnIndex = 0;
  bool _sortAscending = true;

  void _sort(int columnIndex, bool ascending) {
    setState(() {
      _sortColumnIndex = columnIndex;
      _sortAscending = ascending;
      widget.data.sort((a, b) {
        if (ascending) {
          return a[_columns[columnIndex]].compareTo(b[_columns[columnIndex]]);
        } else {
          return b[_columns[columnIndex]].compareTo(a[_columns[columnIndex]]);
        }
      });
    });
  }

  @override
  void initState() {
    log("widget.data ${widget.data}");
    super.initState();
    if (widget.statementType == PrefResources.ROUT_NULL) {
      _columns = [
        'Particulars',
        'Address1',
        'Address2',
        'Mobile',
        'Opening Dr',
        'Opening Cr',
        'Debit',
        'Credit',
        'Closing Dr',
        'Closing Cr'
      ];
    } else if (widget.statementType == PrefResources.ROUT_AND_SALESMAN) {
      _columns = [
        "Particulars",
        "Salesman",
        "Rout",
        "OpeningBalance",
        "Debit",
        "Credit",
        "ClosingBalance"
      ];
    } else if (widget.statementType == PrefResources.SALES_MAN_WISE_GROUP) {
      _columns = [
        "Particulars",
        "Salesman",
        "Rout",
        "OpeningBalance",
        "Debit",
        "Credit",
        "ClosingBalance"
      ];
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomDataTable(
      rowsPerPage: _rowsPerPage,
      onRowsPerPageChanged: (int? value) {
        setState(() {
          _rowsPerPage = value!;
        });
      },
      availableRowsPerPage: const [10, 20, 30, 40, 50],
      columns: _columns.map((String column) {
        return DataColumn(
          label: Text(
            column,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 12,
            ),
          ),
          onSort: (int columnIndex, bool ascending) {
            _sort(columnIndex, ascending);
          },
        );
      }).toList(),
      source: _DataSource(context, widget.data, widget.statementType),
    );
  }
}

class _DataSource extends DataTableSource {
  _DataSource(this.context, this.data, this.statementType);

  final BuildContext context;
  final List<Map<String, dynamic>> data;
  final String statementType;
  List<DataCell> dataCell = [];
  @override
  DataRow getRow(int index) {
    final row = data[index];
    if (statementType == PrefResources.ROUT_NULL) {
      dataCell = [
        DataCell(Text("${row['Particulars'] ?? ''}")),
        DataCell(Text("${row['Address1'] ?? ''}")),
        DataCell(Text("${row['Address2'] ?? ''}")),
        DataCell(Text('${row['Contact'] ?? ''}')),
        DataCell(Text("${row['OpeningDr'] ?? ''}")),
        DataCell(Text("${row['OpeningCr'] ?? ''}")),
        DataCell(Text("${row['Debit'] ?? ''}")),
        DataCell(Text("${row['Credit'] ?? ''}")),
        DataCell(Text("${row['ClosingDr'] ?? ''}")),
        DataCell(Text("${row['ClosingCr'] ?? ''}"))
      ];
    } else if (statementType == PrefResources.ROUT_AND_SALESMAN) {
      dataCell = [
        DataCell(Text("${row['Particulars'] ?? ''}")),
        DataCell(Text("${row['Salesman'] ?? ''}")),
        DataCell(Text("${row['Rout'] ?? ''}")),
        DataCell(Text('${row['OpeningBalance'] ?? ''}')),
        DataCell(Text("${row['Debit'] ?? ''}")),
        DataCell(Text("${row['Credit'] ?? ''}")),
        DataCell(Text("${row['ClosingBalance'] ?? ''}")),
      ];
    } else if (statementType == PrefResources.SALES_MAN_WISE_GROUP) {
      dataCell = [
        DataCell(Text("${row['Particulars'] ?? ''}")),
        DataCell(Text("${row['Address1'] ?? ''}")),
        DataCell(Text("${row['Address2'] ?? ''}")),
        DataCell(Text('${row['Contact'] ?? ''}')),
        DataCell(Text("${row['OpeningDr'] ?? ''}")),
        DataCell(Text("${row['OpeningCr'] ?? ''}")),
        DataCell(Text("${row['Debit'] ?? ''}")),
        DataCell(Text("${row['Credit'] ?? ''}")),
        DataCell(Text("${row['ClosingDr'] ?? ''}")),
        DataCell(Text("${row['ClosingCr'] ?? ''}"))
      ];
    }
    return DataRow.byIndex(
      index: index,
      cells: dataCell,
    );
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => data.length;

  @override
  int get selectedRowCount => 0;
}
