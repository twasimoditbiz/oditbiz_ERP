import 'dart:convert';
import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:oditbiz/app/db/database_helper.dart';
import 'package:oditbiz/app/page/group/model/group_model.dart';
import 'package:oditbiz/app/page/ledger/model/ledger_search_model.dart';
import 'package:oditbiz/app/page/ledger/model/ledger_table.dart';
import 'package:oditbiz/app/services/repository/ledger_report.dart';
import 'package:oditbiz/app/services/repository/ledger_search.dart';
import 'package:oditbiz/di/di.dart';

part 'group_state.dart';

class GroupCubit extends Cubit<GroupState> {
  GroupCubit() : super(GroupInitial());
  late List<GroupModel> groupModel;
  getGroup() async {
    emit(GroupLoading());
    try {
      final db = getIt<MyDatabase>();
      List<SettingsTableData> ledgerData = await db.getSettigns();
      if (ledgerData.isNotEmpty) {
        if (ledgerData.first.group!.isNotEmpty) {
          final decodeGroupData = json.decode(ledgerData.first.group!) as List;

          groupModel =
              decodeGroupData.map((x) => GroupModel.fromJson(x)).toList();

          emit(GroupLoaded(groupModel: groupModel));
        }
      }
    } catch (e) {
      log(e.toString());
    }
  }

  searchGroup(groupName) async {
    try {
      emit(GroupLoaded(
          groupModel: groupModel
              .where((element) => element.label!
                  .toLowerCase()
                  .contains(groupName.toLowerCase()))
              .toList()));
    } catch (e) {
      log(e.toString());
    }
  }

  double? selectedGroupValue;

  GroupModel? selectedLedger;
  seletedLedger(GroupModel groupModel) {
    
    selectedLedger = groupModel;
    log("${selectedLedger!.label} == ${selectedLedger!.value}");
    selectedGroupValue = selectedLedger?.value;
  }

  clear(){
    selectedGroupValue=null;
    selectedLedger=null;
  }

}
