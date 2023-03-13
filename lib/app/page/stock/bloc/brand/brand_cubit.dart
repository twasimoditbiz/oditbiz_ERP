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

part 'brand_state.dart';

class BrandCubit extends Cubit<BrandState> {
  BrandCubit() : super(BrandInitial());
  late List<SalesmanModel> brandModel;
  getBrand() async {
    emit(BrandLoading());
    try {
      final db = getIt<MyDatabase>();
      List<SettingsTableData> settingsData = await db.getSettigns();
      if (settingsData.isNotEmpty) {
        if (settingsData.first.brand!.isNotEmpty) {
          log("${settingsData.first.brand}");
          final decodeBrandData =
              json.decode(settingsData.first.brand!) as List;

          brandModel =
              decodeBrandData.map((x) => SalesmanModel.fromJson(x)).toList();

          emit(BrandLoaded(brandModel: brandModel));
        }
      }
    } catch (e) {
      log(e.toString());
    }
  }

  searchBrand(routeName) async {
    try {
      emit(BrandLoaded(
          brandModel: brandModel
              .where((element) => element.label!
                  .toLowerCase()
                  .contains(routeName.toLowerCase()))
              .toList()));
    } catch (e) {
      log(e.toString());
    }
  }

  double? selectedBrandValue;

  SalesmanModel? selectedBrand;
  seletedLedger(int index) {
    selectedBrand = brandModel[index];
    selectedBrandValue = selectedBrand?.value;
  }

  clear() {
    selectedBrandValue = null;
    selectedBrand = null;
  }
}
