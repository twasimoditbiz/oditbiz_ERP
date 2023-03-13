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

part 'category_state.dart';

class CategoryCubit extends Cubit<CategoryState> {
  CategoryCubit() : super(CategoryInitial());
  late List<SalesmanModel> categoryModel;
  getCategory() async {
    emit(CategoryLoading());
    try {
      final db = getIt<MyDatabase>();
      List<SettingsTableData> settingsData = await db.getSettigns();
      if (settingsData.isNotEmpty) {
        if (settingsData.first.category!.isNotEmpty) {
          log("${settingsData.first.category}");

          final decodeCategoryData =
              json.decode(settingsData.first.salesman!) as List;

          categoryModel =
              decodeCategoryData.map((x) => SalesmanModel.fromJson(x)).toList();

          emit(CategoryLoaded(categoryModel: categoryModel));
        }
      }
    } catch (e) {
      log(e.toString());
    }
  }

  searchCategory(routeName) async {
    try {
      emit(CategoryLoaded(
          categoryModel: categoryModel
              .where((element) => element.label!
                  .toLowerCase()
                  .contains(routeName.toLowerCase()))
              .toList()));
    } catch (e) {
      log(e.toString());
    }
  }

  double? selectedCategoryValue;

  SalesmanModel? selectedCategory;
  seletedLedger(int index) {
    selectedCategory = categoryModel[index];
    selectedCategoryValue = selectedCategory?.value;
  }

  clear() {
    selectedCategoryValue = null;
    selectedCategory = null;
  }
}
