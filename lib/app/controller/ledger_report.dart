import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:oditbiz/app/controller/ledger_search.dart';
import 'package:oditbiz/app/model/ledger_report_model.dart' as ledger;
import 'package:oditbiz/app/model/ledger_table.dart';
import 'package:oditbiz/app/services/repository/ledger_report.dart';

class LedgerReportController with ChangeNotifier {
  TextEditingController fromTimeController = TextEditingController();
  TextEditingController toTimeController = TextEditingController();
  bool agree = false;
  String fromAndTo = DateFormat('yyyy-MM-dd').format(DateTime.now());
  final formKee = GlobalKey<FormState>();
  late List<LedgerReportResponseModel> ledgerTableData;

  updateFromDate(pickedDate) {
    String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
    fromTimeController.text = formattedDate;
    notifyListeners();
  }

  updateToDate(pickedDated) {
    String formattedDated = DateFormat('yyyy-MM-dd').format(pickedDated);
    toTimeController.text = formattedDated;
    notifyListeners();
  }

  getLedgerDataTable(BuildContext context) async {
    ledgerTableData = await ApiserviceLedgerReport().postLedgerReportFunction(
      context,
      ledger.LedgerReportModel(
        asId: LedgerSearchController.selectedLedgerValue!.toInt(),
        fromDate: fromTimeController.text.isEmpty
            ? fromAndTo
            : fromTimeController.text,
        toDate:
            toTimeController.text.isEmpty ? fromAndTo : toTimeController.text,
        ledgerExcludePending: agree,
      ),
    );
    log(LedgerSearchController.selectedLedgerValue!.toInt().toString());
    log(fromTimeController.text.isEmpty ? fromAndTo : fromTimeController.text);
    log("TO DATE=> ${toTimeController.text.isEmpty ? fromAndTo : toTimeController.text}");
    log(agree.toString());
    notifyListeners();
  }
}
