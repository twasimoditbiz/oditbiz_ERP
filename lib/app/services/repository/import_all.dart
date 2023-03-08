import 'dart:convert';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:oditbiz/app/custom/sncakbar.dart';
import 'package:oditbiz/app/page/ledger/model/import_model.dart';
import 'package:oditbiz/app/resources/pref_resources.dart';
import 'package:oditbiz/app/services/url/url_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ApiserviceImport extends Endpoints {
  Future importAllFunction(context) async {
    try {
      final sp = await SharedPreferences.getInstance();
      final token = sp.getString(PrefResources.TOKENUSER);
      log('USER TOKEN ==> $token');
      final response = await Dio().get(
        "$baseurl$importAll",
        options: Options(
          headers: <String, String>{
            "Content-Type": "application/json",
            "Authorization": "Bearer $token",
          },
        ),
      );
      log("import StatusCode =====> ${response.statusCode}");
      if (response.statusCode! >= 200 || response.statusCode! <= 299) {
        // log("ImportModelresponse ${response.data}");
        return ImportModel.fromJson(json.decode(response.data));
      } else {
        log(response.data);
      }
    } on DioError catch (e) {
      log("import ===$e");
      if (e.error.toString().contains('SocketException')) {
        showSnackBar(context, 'Connection refused !');
        return showSnackBar(context, 'Something went wrong try again!');
      } else {
        log(e.toString());
      }
    }
  }
}
