import 'package:flutter/material.dart';
import 'package:oditbiz/app/model/ledger_search_model.dart';
import '../services/repository/ledger_search.dart';

class LedgerSearchController with ChangeNotifier {
  LedgerSearchController(context) {
    legerSearch(context, "");
  }
  bool isLoading = false;
  List<LedgerSearch> ledgers = [];
  LedgerSearch? selectedLedger;
 static double? selectedLedgerValue;

  void legerSearch(BuildContext context, String ledger) async {
    startLoading(true);
    final response = await ApiserviceLedgerSearch()
        .postLedgerSearchFunction(context, ledger);
    if (response is List<LedgerSearch>) {
      ledgers
        ..clear()
        ..addAll(response);
    }
    startLoading(false);
  }

  startLoading(bool loading) {
    isLoading = loading;
    notifyListeners();
  }

  seletedLedger(int index) {
    selectedLedger = ledgers[index];
    selectedLedgerValue = selectedLedger?.value;
    notifyListeners();
  }
}
