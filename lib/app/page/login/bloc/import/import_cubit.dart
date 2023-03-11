// ignore_for_file: depend_on_referenced_packages

import 'dart:convert';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:drift/drift.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:oditbiz/app/db/database_helper.dart';
import 'package:oditbiz/app/page/ledger/model/import_model.dart';
import 'package:oditbiz/app/services/repository/import_all.dart';
import 'package:oditbiz/app/services/repository/login_user_location.dart';
import 'package:oditbiz/di/di.dart';
import 'package:fluttertoast/fluttertoast.dart';
part 'import_state.dart';

class ImportCubit extends Cubit<ImportState> {
  ImportCubit() : super(ImportInitial());
  late List<ImportModel> data = [];

  getImport(context) async {
    emit(ImportLoading());
    // try {
    ImportModel? data = await ApiserviceImport().importAllFunction(context);

    if (data != null) {
      final db = getIt<MyDatabase>();

      final importStatus =
          await db.checkAndInsersettingsTableData(SettingsTableCompanion(
        ledger: Value(data.ledger),
        group: Value(data.group),
        location: Value(data.location),
        category: Value(data.category),
        brand: Value(data.brand),
        itemCode: Value(data.itemCode),
        itemName: Value(data.itemName),
        subcategory: Value(data.subcategory),
        customer: Value(data.customer),
        salesman: Value(data.salesman),
        area: Value(data.area),
        district: Value(data.district),
        salesType: Value(data.salesType),
        cash: Value(data.cash),
        company: Value(data.company),
        allSalesType: Value(data.allSalesType),
        allRateType: Value(data.allRateType),
        android: Value(data.android),
        allRoutes: Value(data.allRoutes),
        permissions: Value(data.permissions),
        gnlUsers: Value(data.gnlUsers),
        bank: Value(data.bank),
        company2: Value(data.company_),
        receivingcondition: Value(data.receivingcondition),
        servicetype: Value(data.servicetype),
        complaints: Value(data.complaints),
        fixtype: Value(data.fixtype),
        workorderstatus: Value(data.workorderstatus),
        color: Value(data.color),
        collecteditems: Value(data.collecteditems),
        deliverystatus: Value(data.deliverystatus),
        formControls: Value(data.formControls!),
      ));

      // await db.inserLedgerData(
      //     LedgerTableCompanion(ledgerData: Value(data.ledger)));
      if (importStatus != 0) {
        Fluttertoast.showToast(
          msg: "Data imported successfully",
          backgroundColor: Colors.white,
          textColor: Colors.black,
        );
      }
      emit(ImportLoaded(data));
    }
  }
  // } catch (ex) {
  // emit(ImportError("Sorry! We Couldn't connect to our servers"));
  // }

}
