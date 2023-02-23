import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:oditbiz/app/custom/sncakbar.dart';
import 'package:oditbiz/app/model/login_user_model.dart';
import 'package:oditbiz/app/services/url/url_page.dart';
import 'package:oditbiz/app/services/user_service_user.dart';

class ApiserviceloginUser extends Endpoints {
  Future loginUserFunction(context, LoginUserModel object) async {
    try {
      final response = await Dio().post(
        "$baseurl$loginUser",
        data: object.toJson(),
        options: Options(
          headers: <String, String>{
            "Content-Type": "application/json",
          },
        ),
      );
      log('login response => ${response.statusCode}');
      if (response.statusCode! >= 200 || response.statusCode! <= 299) {
        // if (response.statusCode! >= 200 || response.statusCode! <= 299) {
          Navigator.pushReplacementNamed(context, "/BottomNavigationScreen");
          showSnackBar(context, "Authentication Success");
        // }
        log(response.data.toString());
        return await UserServicesUser().setUserDataUser(response.data["tokens"])
            ? "success"
            : "false";
      }
    } on DioError catch (e) {
      log(e.toString());
      // showSnackBar(context, e.response!.data.toString());
      if (e.response!.statusCode == 401) {
        log(e.response!.statusCode.toString());
        showSnackBar(context, "Username and Password don't Match");
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
