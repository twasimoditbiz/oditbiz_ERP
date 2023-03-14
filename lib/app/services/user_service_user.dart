import 'dart:developer';
import 'package:oditbiz/app/resources/pref_resources.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserServicesUser {
  Future<bool> setUserDataUser(
      {required String usertoken,
      required String guuserid,
      required String guusername,
      required String userrole,
      required String erptype,
      required String saleman}) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(PrefResources.TOKENUSER, usertoken);
      await prefs.setString(PrefResources.GU_USER_ID, guuserid);
      await prefs.setString(PrefResources.GU_USER_NAME, guusername);
      await prefs.setString(PrefResources.USER_ROLE, userrole);
      await prefs.setString(PrefResources.ERP_TYPE, erptype);
      return prefs.setString(PrefResources.SALE_MAN, saleman);
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
