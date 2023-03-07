import 'dart:convert';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:oditbiz/app/custom/sncakbar.dart';
import 'package:oditbiz/app/page/ledger/model/ledger_report_model.dart';
import 'package:oditbiz/app/page/ledger/model/ledger_table.dart';
import 'package:oditbiz/app/routes/page_routes.dart';
import 'package:oditbiz/app/services/url/url_page.dart';

class ApiserviceLedgerReport extends Endpoints {
  Future postLedgerReportFunction({
      required LedgerReportModel object}) async {
    try {
      log('Report url => ${baseurl + ledgerReport}');
      final response = await Dio().post(
        "$baseurl$ledgerReport",
        options: Options(
          headers: {
            'Authorization':
                'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1lIjoiMSIsImp0aSI6IjNkYmY4OGEwLTZkMjItNDMxMS1iOGY4LWE1ZmU4NDZkYzcyYiIsImh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3dzLzIwMDUvMDUvaWRlbnRpdHkvY2xhaW1zL25hbWVpZGVudGlmaWVyIjoiMSIsImh0dHA6Ly9zY2hlbWFzLm1pY3Jvc29mdC5jb20vd3MvMjAwOC8wNi9pZGVudGl0eS9jbGFpbXMvcm9sZSI6IlVzZXIiLCJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA5LzA5L2lkZW50aXR5L2NsYWltcy9hY3RvciI6ImN4TUY4bTFEdjYxOSt3MFpzc2hUYVE9PSIsImh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3dzLzIwMDUvMDUvaWRlbnRpdHkvY2xhaW1zL2dpdmVubmFtZSI6Ikx6RkJpN0huSUlFV2NsT1JmS25Oc1E9PSIsImh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3dzLzIwMDUvMDUvaWRlbnRpdHkvY2xhaW1zL2dlbmRlciI6IjU4VzBSVmlxSXRFKzlidXdhcVAzZUE9PSIsImh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3dzLzIwMDUvMDUvaWRlbnRpdHkvY2xhaW1zL2RhdGVvZmJpcnRoIjoiaGZQQmNuTi9RV0pWcHNLZG9WWlpQZz09IiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvcG9zdGFsY29kZSI6IkFETUlOIiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvYW5vbnltb3VzIjoiMSIsImh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3dzLzIwMDUvMDUvaWRlbnRpdHkvY2xhaW1zL3NpZCI6IjAiLCJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9zdXJuYW1lIjoiMSIsImh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3dzLzIwMDUvMDUvaWRlbnRpdHkvY2xhaW1zL2xvY2FsaXR5IjoiMiwxIiwiZXhwIjoxNzg2MDc4OTY1LCJpc3MiOiJodHRwOi8vbG9jYWxob3N0OjYxOTU1IiwiYXVkIjoiaHR0cDovL2xvY2FsaG9zdDo0MjAwIn0.FdEVIYTULzWjJJnOFLF6Iu0uLrPiP8Y9ioff7i21k9I',
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
