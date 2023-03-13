import 'dart:convert';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:oditbiz/app/custom/sncakbar.dart';
import 'package:oditbiz/app/page/group/model/group_report_model.dart';
import 'package:oditbiz/app/page/ledger/model/import_model.dart';
import 'package:oditbiz/app/resources/pref_resources.dart';
import 'package:oditbiz/app/services/url/url_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ApiserviceGropReport extends Endpoints {
  Future<dynamic> getGropReportFunction(
      context, GropReportPostData gropReportPostData) async {
    try {
      final sp = await SharedPreferences.getInstance();
      final token = sp.getString(PrefResources.TOKENUSER);
      // String test_token = PrefResources.TEST_TOKENUSER;
      log("=> postdata ${jsonEncode(gropReportPostData.toJson())}");
      final response = await Dio().post(
        "$baseurl$groupReport",
        options: Options(
          headers: <String, String>{
            "Content-Type": "application/json",
            "Authorization": "Bearer $token",
          },
        ),
        data: jsonEncode(gropReportPostData.toJson()),
      );
      log("import StatusCode =====> ${response.statusCode} ");
      if (response.statusCode! >= 200 || response.statusCode! <= 299) {
        return gropReportModelFromJson(response.data);
      } else {
        log(response.data);
      }
    } on DioError catch (e) {
      log("import ===$e");
      if (e.error.toString().contains('SocketException')) {
        return null;
        // showSnackBar(context, 'Connection refused ! import');
        // return showSnackBar(context, 'Something went wrong try again!');
      } else {
        return null;
      }
    }
  }
}
