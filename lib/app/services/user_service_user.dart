import 'dart:developer';
import 'package:oditbiz/app/resources/pref_resources.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserServicesUser {
  Future<bool> setUserDataUser(String data) async {
    log("setUserData");
    try {
      final prefs = await SharedPreferences.getInstance();
      log("setUserData1");
      return prefs.setString(PrefResources.TOKENUSER, data);
    } catch (e) {
      log(e.toString());
      return false;
    }
  }

  Future<bool> removeUserData() async {
    log("removeUserData");
    try {
      final prefs = await SharedPreferences.getInstance();
      log("removeUserData1");
      return await prefs.remove('value');
    } catch (e) {
      log(e.toString());
      return false;
    }
  }

  // Future<dynamic> getUserDataApp() async {
  //   log("getUserData");
  //   try {
  //     final prefs = await SharedPreferences.getInstance();
  //     final res = prefs.getString('value');
  //     log("getUserData1");
  //     return res != null
  //         ? loginUserModelFromJson(jsonDecode(res.toString()))
  //         : false;
  //   } catch (e) {
  //     log(e.toString());
  //     return false;
  //   }
  // }
}
