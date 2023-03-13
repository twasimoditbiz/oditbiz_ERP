import 'dart:convert';
import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:oditbiz/app/db/database_helper.dart';
import 'package:oditbiz/app/page/group/model/route_model.dart';
import 'package:oditbiz/app/page/ledger/model/ledger_search_model.dart';
import 'package:oditbiz/app/page/ledger/model/ledger_table.dart';
import 'package:oditbiz/app/services/repository/ledger_report.dart';
import 'package:oditbiz/app/services/repository/ledger_search.dart';
import 'package:oditbiz/di/di.dart';

part 'route_state.dart';

class RouteCubit extends Cubit<RouteState> {
  RouteCubit() : super(RouteInitial());
  late List<RouteModel> routeModel;
  getRoute() async {
    emit(RouteLoading());
    try {
      final db = getIt<MyDatabase>();
      List<SettingsTableData> routeData = await db.getSettigns();
      if (routeData.isNotEmpty) {
        if (routeData.first.location!.isNotEmpty) {
          log("${routeData.first.location}");

          final decodeRouteData =
              json.decode(routeData.first.location!) as List;

          routeModel =
              decodeRouteData.map((x) => RouteModel.fromJson(x)).toList();

          emit(RouteLoaded(routeModel: routeModel));
        }
      }
    } catch (e) {
      log(e.toString());
    }
  }

  searchRoute(routeName) async {
    try {
      emit(RouteLoaded(
          routeModel: routeModel
              .where((element) => element.label!
                  .toLowerCase()
                  .contains(routeName.toLowerCase()))
              .toList()));
    } catch (e) {
      log(e.toString());
    }
  }

  double? selectedRouteValue;

  RouteModel? selectedLedger;
  seletedLedger(int index) {
    selectedLedger = routeModel[index];
    selectedRouteValue = selectedLedger?.value;
  }

  clear() {
    selectedLedger = null;
    selectedRouteValue = null;
  }
}
