// ignore_for_file: depend_on_referenced_packages

import 'dart:convert';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:drift/drift.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:oditbiz/app/db/database_helper.dart';
import 'package:oditbiz/app/page/ledger/model/app_login_model.dart';
import 'package:oditbiz/app/page/login/bloc/import/import_cubit.dart';
import 'package:oditbiz/app/page/login/model/login_app_model.dart';
import 'package:oditbiz/app/resources/pref_resources.dart';
import 'package:oditbiz/app/services/repository/import_all.dart';
import 'package:oditbiz/app/services/repository/login_app.dart';
import 'package:oditbiz/app/services/repository/login_user_location.dart';
import 'package:oditbiz/app/services/user_service_app.dart';
import 'package:oditbiz/di/di.dart';
import 'package:shared_preferences/shared_preferences.dart';
part 'app_login_state.dart';

class AppLoginCubit extends Cubit<AppLoginState> {
  AppLoginCubit() : super(AppLoginInitial());
  late List<AppLoginModel> data = [];

  getAppLogin(context, LoginAppModel object) async {
    emit(AppLoginLoading());
    // try {
    AppLoginModel? data =
        await ApiserviceloginApp().loginAppFunction(context, object);
    if (data != null) {
      if (data.status!) {
        await UserServices()
            .setUserDataApp("${json.decode(data.token!)[0]['value']}");
      }
      emit(AppLoginLoaded(data));
    }
  }
  // } catch (ex) {
  // emit(ImportError("Sorry! We Couldn't connect to our servers"));
  // }

}
