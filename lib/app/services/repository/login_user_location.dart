
import 'dart:convert';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:oditbiz/app/custom/sncakbar.dart';
import 'package:oditbiz/app/page/login/bloc/model/login_user_location_model.dart';
import 'package:oditbiz/app/resources/pref_resources.dart';
import 'package:oditbiz/app/services/url/url_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ApiserviceLoginUserLocation extends Endpoints {
  Future loginUserLoctionFunction(context) async {
    try {
      final sp = await SharedPreferences.getInstance();
      final token = sp.getString(PrefResources.TOKENAPP);
      log('location USER TOKEN ==> $token');
      final response = await Dio().get(
        "$baseurl$userLocation",
        options: Options(
          headers: <String, String>{
            "Content-Type": "application/json",
            "Authorization": " Bearer $token",
          },
        ),
      );
      log("location StatusCode =====> ${response.statusCode}");
      if (response.statusCode! >= 200 || response.statusCode! <= 299) {
        log(response.data);
        return LoginLocationModel.fromJson(jsonDecode(response.data));
      } else {
        log(response.data);
      }
    } on DioError catch (e) {
      log(e.toString());
      if (e.error.toString().contains('SocketException')) {
        return showSnackBar(context, 'Something went wrong try again!');
      } else {
        log(e.toString());
      }
    }
  }
}


