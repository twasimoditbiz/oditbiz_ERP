import 'dart:convert';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:oditbiz/app/custom/sncakbar.dart';
import 'package:oditbiz/app/model/login_user_model.dart';
import 'package:oditbiz/app/routes/page_routes.dart';
import 'package:oditbiz/app/services/url/url_page.dart';
import 'package:oditbiz/app/services/user_service_user.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../resources/pref_resources.dart';

class ApiserviceloginUser extends Endpoints {
  Future loginUserFunction(context, LoginUserModel object) async {
    try {
      final sp = await SharedPreferences.getInstance();
      final token = sp.getString(PrefResources.TOKENAPP);
      log('USER TOKEN ==> $token');
      final response = await Dio().post(
        "$baseurl$loginUser",
        data: object.toJson(),
        options: Options(
          headers: <String, String>{
            "Content-Type": "application/json",
            'Authorization': " Bearer $token",
          },
        ),
      );
      log('login response => ${response.statusCode}');
      if (response.statusCode! >= 200 || response.statusCode! <= 299) {
        log(response.data.toString());
        Get.offAllNamed(PageRoutes.bottomNavigationScreen);
        showSnackBar(context, "Authentication Success");
        return 
        // LoginUserModel.fromJson(json.decode(response.data));
        await UserServicesUser().setUserDataUser(response.data["tokens"]);
      }
    } on DioError catch (e) {
      log(e.toString());
      if (e.response!.statusCode == 401) {
        log(e.response!.statusCode.toString());
        showSnackBar(context, "Check Your Login Detalis");
      } else {
        log("${e.message}".toString());
        log(e.requestOptions.toString());
      }

      if (e.error.toString().contains('SocketException')) {
        showSnackBar(context, 'Connection refused !');
        return showSnackBar(context, 'Something went wrong try again');
      } else {
        log(' =>$e');
      }
    }
  }
}
