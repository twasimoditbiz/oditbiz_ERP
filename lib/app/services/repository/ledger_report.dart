import 'dart:convert';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:oditbiz/app/custom/sncakbar.dart';
import 'package:oditbiz/app/page/ledger/model/ledger_report_model.dart';
import 'package:oditbiz/app/page/ledger/model/ledger_table.dart';
import 'package:oditbiz/app/resources/pref_resources.dart';
import 'package:oditbiz/app/routes/page_routes.dart';
import 'package:oditbiz/app/services/url/url_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ApiserviceLedgerReport extends Endpoints {
  Future postLedgerReportFunction({required LedgerReportModel object}) async {
    try {
      final sp = await SharedPreferences.getInstance();
      final token = sp.getString(PrefResources.TOKENUSER);
      log('Report url => ${baseurl + ledgerReport}');
      final response = await Dio().post(
        "$baseurl$ledgerReport",
        options: Options(
          headers: {
            'Authorization': 'Bearer $token',
            'Content-Type': 'application/json',
          },
        ),
        data: object.toJson(),
      );
      log('ledger response => ${response.statusCode}');
      if (response.statusCode! >= 200 || response.statusCode! <= 299) {
        Get.toNamed(PageRoutes.ledgerTableScreen);
        return ledgerReportResponseModelFromJson(
            jsonDecode(response.toString())['table'] as List);
      }
    } on DioError catch (e) {
      log(e.toString());
      if (e.error.toString().contains('SocketException')) {
        // return showSnackBar(context, 'Connection refused !');
      } else {
        log(' =>$e');
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
