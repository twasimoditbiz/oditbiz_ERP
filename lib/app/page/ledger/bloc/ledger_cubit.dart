import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:oditbiz/app/page/ledger/bloc/ledger_rearch/ledger_search_cubit.dart';
import 'package:oditbiz/app/page/ledger/model/ledger_table.dart';
import 'package:oditbiz/app/services/repository/ledger_report.dart';
import '../../../controller/ledger_search.dart';
import '../model/ledger_report_model.dart' as ledger;
part 'leger_state.dart';

class LedgerCubit extends Cubit<LegerResponseState> {
  LedgerCubit() : super(LegerResponseInitial());
  List<LedgerReportResponseModel> paginatedLedgerReport = [];
  TextEditingController fromTimeController = TextEditingController();
  TextEditingController toTimeController = TextEditingController();
  bool agree = false;
  bool isRotation = true;
  bool isLoading = false;
  int lastCount = 0;
  int totalRowsPerPage = 0;
  String fromAndTo = DateFormat('yyyy-MM-dd').format(DateTime.now());
  final formKee = GlobalKey<FormState>();
  List<LedgerReportResponseModel> ledgerTableData = [];

  getLedgerReport(BuildContext connect) async {
    emit(LegerResponseLoading());
    try {
      List<LedgerReportResponseModel> response =
          await ApiserviceLedgerReport().postLedgerReportFunction(
        object: ledger.LedgerReportModel(
          asId: BlocProvider.of<LedgerSearchCubit>(connect)
              .selectedLedgerValue!
              .toInt(),
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
      for (var i = 0; i < 50; i++) {
        paginatedLedgerReport.add(ledgerTableData[i]);
      }
      emit(LegerResponseLoaded(
          ledgerReportResponseModel: paginatedLedgerReport));
    } catch (e) {
      log(e.toString());
    }
  }

  getPaginatedDataNext() {
    emit(LegerResponseInitial());
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
