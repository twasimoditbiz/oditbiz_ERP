import 'dart:convert';
import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:oditbiz/app/db/database_helper.dart';
import 'package:oditbiz/app/page/group/model/salesman_model.dart';
import 'package:oditbiz/app/page/ledger/model/ledger_search_model.dart';
import 'package:oditbiz/app/page/ledger/model/ledger_table.dart';
import 'package:oditbiz/app/services/repository/ledger_report.dart';
import 'package:oditbiz/app/services/repository/ledger_search.dart';
import 'package:oditbiz/di/di.dart';

part 'salesman_state.dart';

class SalesManCubit extends Cubit<SalesManState> {
  SalesManCubit() : super(SalesManInitial());
  late List<SalesmanModel> salesManModel;
  getSalesMan() async {
    emit(SalesManLoading());
    try {
      final db = getIt<MyDatabase>();
      List<SettingsTableData> settingsData = await db.getSettigns();
      if (settingsData.isNotEmpty) {
        if (settingsData.first.salesman!.isNotEmpty) {
          final decodeSalesManData =
              json.decode(settingsData.first.salesman!) as List;

          salesManModel =
              decodeSalesManData.map((x) => SalesmanModel.fromJson(x)).toList();

          emit(SalesManLoaded(salesManModel: salesManModel));
        }
      }
    } catch (e) {
      log(e.toString());
    }
  }

  searchSalesMan(routeName) async {
    try {
      emit(SalesManLoaded(
          salesManModel: salesManModel
              .where((element) => element.label!
                  .toLowerCase()
                  .contains(routeName.toLowerCase()))
              .toList()));
    } catch (e) {
      log(e.toString());
    }
  }

  double? selectedSalesManValue;

  SalesmanModel? selectedSalesMan;
  seletedLedger(int index) {
    selectedSalesMan = salesManModel[index];
    selectedSalesManValue = selectedSalesMan?.value;
  }

  clear() {
    selectedSalesManValue = null;
    selectedSalesMan = null;
  }
}
