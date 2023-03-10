import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:oditbiz/app/custom/sncakbar.dart';
import 'package:oditbiz/app/model/login_app_model.dart';
import 'package:oditbiz/app/services/url/url_page.dart';
import 'package:oditbiz/app/services/user_service_app.dart';

class ApiserviceloginApp extends Endpoints {
  Future loginAppFunction(context, LoginAppModel object) async {
    try {
      final response = await Dio().post(
        "$baseurl$loginApp",
        data: object.toJson(),
        options: Options(
          headers: <String, String>{
            "Content-Type": "application/json",
          },
        ),
      );
      log('ledger response => ${response.statusCode}');
      if (response.statusCode! >= 200 || response.statusCode! <= 299) {
        Navigator.pushReplacementNamed(context, "/login");
        log(response.data.toString());
        final responseData = jsonDecode(response.data["token"]);
        return await UserServices().setUserDataApp(responseData[0]["value"])
            ? "success"
            : "false";
      }
    } on DioError catch (e) {
      log(e.toString());
      // showSnackBar(context, e.response!.data.toString());
      if (e.response?.statusCode == 401) {
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
    } catch (e) {
      log(e.toString());
    }
  }
}
