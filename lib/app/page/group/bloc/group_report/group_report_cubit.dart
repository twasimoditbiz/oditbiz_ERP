import 'dart:convert';
import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:oditbiz/app/db/database_helper.dart';
import 'package:oditbiz/app/page/group/model/group_report_model.dart';
import 'package:oditbiz/app/page/group/model/salesman_model.dart';
import 'package:oditbiz/app/page/group/repository/group_report_repository.dart';
import 'package:oditbiz/app/page/ledger/model/ledger_search_model.dart';
import 'package:oditbiz/app/page/ledger/model/ledger_table.dart';
import 'package:oditbiz/app/services/repository/ledger_report.dart';
import 'package:oditbiz/app/services/repository/ledger_search.dart';
import 'package:oditbiz/di/di.dart';
import 'package:path/path.dart';

part 'group_report_state.dart';

class GroupReportCubit extends Cubit<GroupReportState> {
  GroupReportCubit() : super(GroupReportInitial());
  late List<GropReportModel> gropReportModel;
  String? selectedGroup = "";
  TextEditingController fromTimeController = TextEditingController();
  TextEditingController toTimeController = TextEditingController();
  bool isRotation = true;
  String fromAndTo = DateFormat('yyyy-MM-dd').format(DateTime.now());

  final formKee = GlobalKey<FormState>();
  getGropReport(context, GropReportPostData gropReportPostData) async {
    emit(GroupReportLoading());
    try {
      if (validateData(gropReportPostData)) {
        emit(GropReporValidationError());
        return;
      }

      gropReportModel = await ApiserviceGropReport()
          .getGropReportFunction(context, gropReportPostData);
      log("gropReportModel.length ${gropReportModel.length}");
      emit(GroupReportLoaded(groupReportModel: gropReportModel));
    } catch (e) {
      emit(GroupReportError(""));
      log(e.toString());
    }
  }

  updateFromDate(pickedDate) {
    String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
    fromTimeController.text = formattedDate;
  }

  updateToDate(pickedDated) {
    String formattedDated = DateFormat('yyyy-MM-dd').format(pickedDated);
    toTimeController.text = formattedDated;
  }

  updateGroup(value) {
    selectedGroup = value;
  }

  bool validateData(GropReportPostData gropReportPostData) {
    bool isAllValid = false;

    if (fromTimeController.text.isNotEmpty) {
      updateToDate(DateTime.now());
    }

    if (gropReportPostData.asId == null || gropReportPostData.asId == 0) {
      Fluttertoast.showToast(
        msg: "Please select a group",
        textColor: Colors.black,
        backgroundColor: Colors.white,
      );
      isAllValid = true;
    }

    return isAllValid;
  }

  void rotationFunction() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
  }

  void rotationOFFfunction() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }
}
