import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:oditbiz/app/controller/ledger_search.dart';
import 'package:oditbiz/app/controller/state_update.dart';
import 'package:oditbiz/app/model/ledger_report_model.dart' as ledger;
import 'package:oditbiz/app/model/ledger_table.dart';
import 'package:oditbiz/app/services/repository/ledger_report.dart';

class LedgerReportController extends StateProvider {
  LedgerReportController(BuildContext context) {
    getLedgerDataTable(context);
  }
  TextEditingController fromTimeController = TextEditingController();
  TextEditingController toTimeController = TextEditingController();
  bool agree = false;
  bool isRotation = true;
  bool isLoading = false;
  String fromAndTo = DateFormat('yyyy-MM-dd').format(DateTime.now());
  final formKee = GlobalKey<FormState>();
  List<LedgerReportResponseModel> ledgerTableData = [];

  updateFromDate(pickedDate) {
    update(() {
      String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
      fromTimeController.text = formattedDate;
    });
  }

  updateToDate(pickedDated) {
    update(() {
      String formattedDated = DateFormat('yyyy-MM-dd').format(pickedDated);
      toTimeController.text = formattedDated;
    });
  }

  getLedgerDataTable(BuildContext context) async {
    update(() => isLoading = true);
    await ApiserviceLedgerReport().postLedgerReportFunction(
      context,
      ledger.LedgerReportModel(
        asId: LedgerSearchController.selectedLedgerValue?.toInt() ?? 0,
        fromDate: fromTimeController.text.isEmpty
            ? fromAndTo
            : fromTimeController.text,
        toDate:
            toTimeController.text.isEmpty ? fromAndTo : toTimeController.text,
        ledgerExcludePending: agree,
      ),
    );
    update(() => isLoading = false);
  }

  void rotationFunction() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
  }

  void rotationOFFfunction() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }
}
