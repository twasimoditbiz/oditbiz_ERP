import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:oditbiz/app/custom/sncakbar.dart';
import 'package:oditbiz/app/model/import_model.dart';
import 'package:oditbiz/app/resources/pref_resources.dart';
import 'package:oditbiz/app/services/url/url_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ApiserviceImport extends Endpoints {
  Future importAllFunction(context) async {
    try {
      final sp = await SharedPreferences.getInstance();
      final token = sp.getString(PrefResources.TOKENAPP);
      log('USER TOKEN ==> $token');
      final response = await Dio().get(
        "$baseurl$importAll",
        options: Options(
          headers: <String, String>{
            "Content-Type": "application/json",
            "Authorization": " Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1lIjoiMSIsImp0aSI6ImUxZjkzNzhhLWVmMjEtNDdkNS05YWUyLWFkM2UzMDNhNWJhNSIsImh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3dzLzIwMDUvMDUvaWRlbnRpdHkvY2xhaW1zL25hbWVpZGVudGlmaWVyIjoiMSIsImh0dHA6Ly9zY2hlbWFzLm1pY3Jvc29mdC5jb20vd3MvMjAwOC8wNi9pZGVudGl0eS9jbGFpbXMvcm9sZSI6IlVzZXIiLCJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA5LzA5L2lkZW50aXR5L2NsYWltcy9hY3RvciI6Ilc3QzN1VFA2clIzaGQyYmFIYThFOVF4MjI4OTk4QVZoIiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvZ2l2ZW5uYW1lIjoiN3NGSVBXbk1zQUk4Qy9sTFZ5Ukp3UT09IiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvZ2VuZGVyIjoiTVgzUEtZbUkxMUk9IiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvZGF0ZW9mYmlydGgiOiI1M1o2ditWZFpwZXYveEk5K1Yzd0x6bW9kY1BxcU9XcyIsImh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3dzLzIwMDUvMDUvaWRlbnRpdHkvY2xhaW1zL3Bvc3RhbGNvZGUiOiJBRE1JTiIsImh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3dzLzIwMDUvMDUvaWRlbnRpdHkvY2xhaW1zL2Fub255bW91cyI6IjIiLCJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9zaWQiOiIwIiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvc3VybmFtZSI6IjEiLCJleHAiOjE3ODU4Mjc0MzYsImlzcyI6Imh0dHA6Ly9sb2NhbGhvc3Q6NjE5NTUiLCJhdWQiOiJodHRwOi8vbG9jYWxob3N0OjQyMDAifQ.rZPndd9BK2YyIW9ndAh_4ZfDn1OIR2B0PkutcPbv5qg",
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
      log(e.toString());
      if (e.error.toString().contains('SocketException')) {
        showSnackBar(context, 'Connection refused !');
        return showSnackBar(context, 'Something went wrong try again!');
      } else {
        log(e.toString());
      }
    }
  }
}
