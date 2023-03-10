import 'dart:developer';
import 'package:oditbiz/app/resources/pref_resources.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserServices {
  Future<bool> setUserDataApp(String data) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return prefs.setString(PrefResources.TOKENAPP, data);
    } catch (e) {
      log(e.toString());
      return false;
    }
  }

  Future<bool> removeAppData() async {
    try {
      final prefs = await SharedPreferences.getInstance();
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
  //    final res = prefs.getString('value');
  //     log("getUserData1");
  //     return res != null
  //         ? loginAppModelFromJson(jsonDecode(res.toString()))
  //         : false;
  //   } catch (e) {
  //     log(e.toString());
  //     return false;
  //   }
  // }
}
