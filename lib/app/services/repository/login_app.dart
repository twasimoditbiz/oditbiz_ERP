import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oditbiz/app/custom/sncakbar.dart';
import 'package:oditbiz/app/page/ledger/model/app_login_model.dart';
import 'package:oditbiz/app/page/login/model/login_app_model.dart';
import 'package:oditbiz/app/routes/page_routes.dart';
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
      log('app login response => ${response.statusCode}');
      if (response.statusCode! >= 200 || response.statusCode! <= 299) {
        

        return AppLoginModel.fromJson(response.data);
      }
    } on DioError catch (e) {
      log(e.toString());
      if (e.response?.statusCode == 401) {
        log(e.response!.statusCode.toString());
        showSnackBar(context, "Username and Password don't Match");
      } else {
        log("${e.message}".toString());

        log(e.requestOptions.toString());
      }

      if (e.error.toString().contains('SocketException')) {
        showSnackBar(context, 'Connection refused ! login app');
        return showSnackBar(context, 'Something went wrong try again');
      } else {
        log(' =>$e');
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
