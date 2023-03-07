import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:oditbiz/app/page/ledger/model/ledger_table.dart';
import 'package:oditbiz/app/services/repository/ledger_report.dart';
import '../../../controller/ledger_search.dart';
import '../model/ledger_report_model.dart' as ledger;
part 'leger_state.dart';

class LedgerCubit extends Cubit<LegerResponseState> {
  LedgerCubit() : super(LegerResponseInitial());


  getPaginatedLedgerReport() async {
    emit(LegerResponseInitial());
    emit(LegerResponseLoading());
    try {
      final response = await ApiserviceLedgerReport().postLedgerReportFunction(
        object: ledger.LedgerReportModel(
          asId: LedgerSearchController.selectedLedgerValue!.toInt(),
          fromDate: fromTimeController.text.isEmpty
              ? fromAndTo
              : fromTimeController.text,
          toDate:
              toTimeController.text.isEmpty ? fromAndTo : toTimeController.text,
          ledgerExcludePending: agree,
        ),
      );
      ledgerTableData
        ..clear()
        ..addAll(response);
      log("Response => $response");
    } catch (e) {
      log(e.toString());
    }
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
    String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
    fromTimeController.text = formattedDate;
  }

  updateToDate(pickedDated) {
    String formattedDated = DateFormat('yyyy-MM-dd').format(pickedDated);
    toTimeController.text = formattedDated;
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
