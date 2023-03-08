import 'dart:convert';
import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:oditbiz/app/db/database_helper.dart';
import 'package:oditbiz/app/page/ledger/model/ledger_search_model.dart';
import 'package:oditbiz/app/page/ledger/model/ledger_table.dart';
import 'package:oditbiz/app/services/repository/ledger_report.dart';
import 'package:oditbiz/app/services/repository/ledger_search.dart';
import 'package:oditbiz/di/di.dart';

part 'ledger_search_state.dart';

class LedgerSearchCubit extends Cubit<LedgerSearchResponseState> {
  LedgerSearchCubit() : super(LedgerSearchResponseInitial());
  late List<LedgerSearchModel> ledgerSearchData;
  getPaginatedLedgerSearchReport(context, ledger) async {
    emit(LedgerSearchResponseLoading());
    try {
      final db = getIt<MyDatabase>();
      List<LedgerTableData> ledgerData = await db.getLedgers();
      if (ledgerData.isNotEmpty) {
        emit(LedgerSearchResponseLoaded(
            ledgerSearchModel:
                ledgerSearchModelFromJson(ledgerData.first.ledgerData!)));
      }
      ledgerSearchData = await ApiserviceLedgerSearch()
          .postLedgerSearchFunction(context, ledger);

      log("Response => $ledgerSearchData");
      emit(LedgerSearchResponseLoaded(ledgerSearchModel: ledgerSearchData));
    } catch (e) {
      log(e.toString());
    }
  }

  double? selectedLedgerValue;

  LedgerSearchModel? selectedLedger;
  seletedLedger(int index) {
    selectedLedger = ledgerSearchData[index];
    selectedLedgerValue = selectedLedger?.value;
  }
}