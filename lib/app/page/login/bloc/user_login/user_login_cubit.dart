// ignore_for_file: depend_on_referenced_packages

import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:drift/drift.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
import 'package:oditbiz/app/db/database_helper.dart';
import 'package:oditbiz/app/model/app_login_model.dart';
import 'package:oditbiz/app/model/import_model.dart';
import 'package:oditbiz/app/model/login_app_model.dart';
import 'package:oditbiz/app/page/login/bloc/model/user_login_model.dart';
import 'package:oditbiz/app/page/login/model/login_user_model.dart';
import 'package:oditbiz/app/resources/pref_resources.dart';
import 'package:oditbiz/app/services/repository/import_all.dart';
import 'package:oditbiz/app/services/repository/login_app.dart';
import 'package:oditbiz/app/services/repository/login_user.dart';
import 'package:oditbiz/app/services/repository/login_user_location.dart';
import 'package:oditbiz/app/services/user_service_app.dart';
import 'package:oditbiz/app/services/user_service_user.dart';
import 'package:oditbiz/di/di.dart';
import 'package:shared_preferences/shared_preferences.dart';
part 'user_login_state.dart';

class UserLoginCubit extends Cubit<UserLoginState> {
  UserLoginCubit() : super(UserLoginInitial());
  late UserLoginModel data;

  getUserLogin(context, LoginUserModel object) async {
    emit(UserLoginLoading());
    // try {
    UserLoginModel? data =
        await ApiserviceloginUser().loginUserFunction(context, object);
    if (data != null) {
      if (data.status!) {
        await UserServicesUser().setUserDataUser(data.token!);
      }

      emit(UserLoginLoaded(data));
    }
  }
  // } catch (ex) {
  // emit(ImportError("Sorry! We Couldn't connect to our servers"));
  // }

}
