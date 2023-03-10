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

class LedgerCubit extends Cubit<LedgerState> {
  LedgerCubit() : super(LedgerInitial());
  List<LedgerReportResponseModel> paginatedLedgerReport = [];
  TextEditingController fromTimeController = TextEditingController();
  TextEditingController toTimeController = TextEditingController();
  bool agree = false;
  bool isRotation = true;
  bool isLoading = false;
  int lastCount = 0;
  int totalRowsPerPage = 50;
  String fromAndTo = DateFormat('yyyy-MM-dd').format(DateTime.now());
  final formKee = GlobalKey<FormState>();
  List<LedgerReportResponseModel> ledgerTableData = [];
  getLedgerReport() async {
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
      paginatedLedgerReport.clear();
      if (ledgerTableData.length < 50) {
        for (var i = 0; i < ledgerTableData.length; i++) {
          paginatedLedgerReport.add(ledgerTableData[i]);
        }
      } else {
        for (var i = 0; i < totalRowsPerPage; i++) {
          paginatedLedgerReport.add(ledgerTableData[i]);
        }
      }
      emit(LegerResponseLoaded(
          ledgerReportResponseModel: paginatedLedgerReport));
    } catch (e) {
      log(e.toString());
    }
  }

  getPaginatedDataNext() {
    emit(LedgerInitial());
    emit(LegerResponseLoading());
    paginatedLedgerReport.clear();
    int toCount = lastCount + totalRowsPerPage;
    paginatedLedgerReport.clear();
    for (int i = lastCount; i < toCount; i++) {
      paginatedLedgerReport.add(ledgerTableData[i]);
    }
    log('paginatedData => ${paginatedLedgerReport.length}');
    lastCount = toCount;
    emit(LegerResponseLoaded(ledgerReportResponseModel: paginatedLedgerReport));
  }

  getPaginatedDataPrevious() {
    emit(LedgerInitial());
    emit(LegerResponseLoading());
    paginatedLedgerReport.clear();
    int toCount = lastCount - totalRowsPerPage;
    paginatedLedgerReport.clear();
    for (int i = toCount; i < lastCount; i++) {
      paginatedLedgerReport.add(ledgerTableData[i]);
    }
    log('paginatedData => ${paginatedLedgerReport.length}');
    lastCount = toCount;
    emit(LegerResponseLoaded(ledgerReportResponseModel: paginatedLedgerReport));
  }

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
