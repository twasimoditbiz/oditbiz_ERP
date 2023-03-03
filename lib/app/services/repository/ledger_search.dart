import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:oditbiz/app/custom/sncakbar.dart';
import 'package:oditbiz/app/model/ledger_search_model.dart';
import 'package:oditbiz/app/services/url/url_page.dart';

class ApiserviceLedgerSearch extends Endpoints {
  Future postLedgerSearchFunction(BuildContext context, String ledger) async {
    try {
      log('search url =>$baseurl$ledgerSearch');
      final response = await Dio().post(
        "$baseurl$ledgerSearch",
        options: Options(
          headers: {
            'Authorization':
                'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1lIjoiMSIsImp0aSI6Ijc1OTcwYzkwLWNmNGYtNDgzYS04YTA3LWYzZGZkMDVlYWFiOSIsImh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3dzLzIwMDUvMDUvaWRlbnRpdHkvY2xhaW1zL25hbWVpZGVudGlmaWVyIjoiMSIsImh0dHA6Ly9zY2hlbWFzLm1pY3Jvc29mdC5jb20vd3MvMjAwOC8wNi9pZGVudGl0eS9jbGFpbXMvcm9sZSI6IlVzZXIiLCJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA5LzA5L2lkZW50aXR5L2NsYWltcy9hY3RvciI6Ilc3QzN1VFA2clIzaGQyYmFIYThFOVF4MjI4OTk4QVZoIiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvZ2l2ZW5uYW1lIjoiN3NGSVBXbk1zQUk4Qy9sTFZ5Ukp3UT09IiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvZ2VuZGVyIjoiTVgzUEtZbUkxMUk9IiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvZGF0ZW9mYmlydGgiOiI1M1o2ditWZFpwZXYveEk5K1Yzd0x6bW9kY1BxcU9XcyIsImh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3dzLzIwMDUvMDUvaWRlbnRpdHkvY2xhaW1zL3Bvc3RhbGNvZGUiOiJBRE1JTiIsImh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3dzLzIwMDUvMDUvaWRlbnRpdHkvY2xhaW1zL2Fub255bW91cyI6IjEiLCJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9zaWQiOiIwIiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvc3VybmFtZSI6IjEiLCJleHAiOjE3ODQ4NzQ2NDYsImlzcyI6Imh0dHA6Ly9sb2NhbGhvc3Q6NjE5NTUiLCJhdWQiOiJodHRwOi8vbG9jYWxob3N0OjQyMDAifQ.3Qtvi760he9pBCcBeWM07JIfwn-RImUE0QAAXMULBIU',
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
      // showSnackBar(context, e.response!.data.toString());
      if (e.error.toString().contains('SocketException')) {
        showSnackBar(context, 'Connection refused !');
        return showSnackBar(context, 'Something went wrong try again');
      } else {
        log(' =>$e');
      }
    }
  }
}
