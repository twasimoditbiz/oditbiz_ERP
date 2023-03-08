import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:oditbiz/app/custom/sncakbar.dart';
import 'package:oditbiz/app/page/login/bloc/model/user_login_model.dart';
import 'package:oditbiz/app/page/login/model/login_user_model.dart';
import 'package:oditbiz/app/services/url/url_page.dart';
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
        log("user_login==" + response.data.toString());

        showSnackBar(context, "Authentication Success");
        return UserLoginModel.fromJson(response.data);
        // LoginUserModel.fromJson(json.decode(response.data));

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
