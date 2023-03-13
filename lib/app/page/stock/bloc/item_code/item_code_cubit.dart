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

part 'item_code_state.dart';

class ItemNameCubit extends Cubit<ItemNameState> {
  ItemNameCubit() : super(ItemNameInitial());
  late List<SalesmanModel> itemNameModel;
  getItemName() async {
    emit(ItemNameLoading());
    try {
      final db = getIt<MyDatabase>();
      List<SettingsTableData> settingsData = await db.getSettigns();
      if (settingsData.isNotEmpty) {
        if (settingsData.first.itemCode!.isNotEmpty) {
          final decodeItemNameData =
              json.decode(settingsData.first.itemCode!) as List;
          log("${settingsData.first.itemCode}");
          itemNameModel =
              decodeItemNameData.map((x) => SalesmanModel.fromJson(x)).toList();

          emit(ItemNameLoaded(itemNameModel: itemNameModel));
        }
      }
    } catch (e) {
      log(e.toString());
    }
  }

  searchItemName(routeName) async {
    try {
      emit(ItemNameLoaded(
          itemNameModel: itemNameModel
              .where((element) => element.label!
                  .toLowerCase()
                  .contains(routeName.toLowerCase()))
              .toList()));
    } catch (e) {
      log(e.toString());
    }
  }

  double? selectedItemNameValue;

  SalesmanModel? selectedItemName;
  seletedLedger(int index) {
    selectedItemName = itemNameModel[index];
    selectedItemNameValue = selectedItemName?.value;
  }

  clear() {
    selectedItemNameValue = null;
    selectedItemName = null;
  }
}
