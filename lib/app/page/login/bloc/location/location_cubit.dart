// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
import 'package:oditbiz/app/model/login_user_location_model.dart';
import 'package:oditbiz/app/services/repository/login_user_location.dart';
part 'location_state.dart';

class LocationCubit extends Cubit<LocationState> {
  LocationCubit() : super(LocationInitial());
  late List<LoginLocationModel> data = [];

  getLocation(context) async {
    emit(LocationLoading());
    try {
      final data =
          await ApiserviceLoginUserLocation().loginUserLoctionFunction(context);
      if (data.isNotEmpty) {
        emit(LocationLoaded(data));
      }
    } catch (ex) {
      emit(LocationError("Sorry! We Couldn't connect to our servers"));
    }
  }
}
