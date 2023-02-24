import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:oditbiz/app/custom/sncakbar.dart';
import 'package:oditbiz/app/model/login_user_location_model.dart';
import 'package:oditbiz/app/resources/pref_resources.dart';
import 'package:oditbiz/app/services/url/url_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ApiserviceLoginUserLocation extends Endpoints {
  Future loginUserLoctionFunction(context) async {
    try {
      final sp = await SharedPreferences.getInstance();
      final token = sp.getString(PrefResources.TOKENAPP);
      log('token ==>$token');
      final response = await Dio().get(
        "$baseurl$userLocation",
        options: Options(
          headers: <String, String>{
            "Content-Type": "application/json",
            "Authorization": " Bearer $token",
          },
        ),
      );
      log(" statusCode ${response.statusCode}");
      if (response.statusCode! >= 200 || response.statusCode! <= 299) {
        log("sucess : ${response.data.toString()}");
        return loginLocationModelFromJson(response.data);
      } else {
        log(response.data.toString());
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
