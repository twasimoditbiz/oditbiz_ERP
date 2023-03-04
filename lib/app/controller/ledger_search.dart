import 'package:flutter/material.dart';
import 'package:oditbiz/app/controller/state_update.dart';
import 'package:oditbiz/app/page/ledger/model/ledger_search_model.dart';
import '../services/repository/ledger_search.dart';

class LedgerSearchController extends StateProvider {
LedgerSearchController(BuildContext context){
  legerSearch(context, "");
}
  bool isLoading = true;
  List<LedgerSearchModel> ledgers = [];
  LedgerSearchModel? selectedLedger;
  static double? selectedLedgerValue;

  void legerSearch(BuildContext context, String ledger) async {
    update(() => isLoading = true);
    final response = await ApiserviceLedgerSearch()
        .postLedgerSearchFunction(context, ledger);
    if (response is List<LedgerSearchModel>) {
      ledgers
        ..clear()
        ..addAll(response);
    }
    update(() => isLoading = true);
    notifyListeners();
  }

  seletedLedger(int index) {
    selectedLedger = ledgers[index];
    selectedLedgerValue = selectedLedger?.value;
    notifyListeners();
  }
}
