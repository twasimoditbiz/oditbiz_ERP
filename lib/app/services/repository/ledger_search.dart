import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:oditbiz/app/custom/sncakbar.dart';
import 'package:oditbiz/app/page/ledger/model/ledger_search_model.dart';
import 'package:oditbiz/app/resources/pref_resources.dart';
import 'package:oditbiz/app/services/url/url_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ApiserviceLedgerSearch extends Endpoints {
  Future postLedgerSearchFunction(BuildContext context, String ledger) async {
    try {
      final sp = await SharedPreferences.getInstance();
      final token = sp.getString(PrefResources.TOKENUSER);
      log('search url =>$baseurl$ledgerSearch');
      final response = await Dio().post(
        "$baseurl$ledgerSearch",
        options: Options(
          headers: {
            'Authorization': 'Bearer $token',
            'Content-Type': 'application/json',
          },
        ),
        data: {'value': ledger},
      );
      log('ledger response => ${response.statusCode}');
      if (response.statusCode! >= 200 || response.statusCode! <= 299) {
        log(response.data);
        return ledgerSearchModelFromJson(response.data);
      }
    } on DioError catch (e) {
      log(e.toString());
      if (e.error.toString().contains('SocketException')) {
        return showSnackBar(context, 'Something went wrong try again');
      } else {
        log(' =>$e');
      }
    }
  }
}
