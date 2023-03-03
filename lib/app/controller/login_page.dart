import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oditbiz/app/model/login_app_model.dart';
import 'package:oditbiz/app/model/login_user_location_model.dart';
import 'package:oditbiz/app/model/login_user_model.dart';
import 'package:oditbiz/app/services/repository/login_app.dart';
import 'package:oditbiz/app/services/repository/login_user.dart';
import 'package:oditbiz/app/services/repository/login_user_location.dart';

class LoginPageController with ChangeNotifier {
  LoginPageController(context) {
    getLoginUserLocation(context);
  }
  final formKey = GlobalKey<FormState>();
  void togglePasswordView() {
    isHidden = !isHidden;
    notifyListeners();
  }

  void togglePasswordViewed() {
    isHiddens = !isHiddens;
    notifyListeners();
  }

  bool isHiddens = true;
  bool isHidden = true;

  String? validate(value) {
    RegExp regex = RegExp(r'^.{0,}$');
    if (value == null) {
      return ("Enter The Field");
    }
    if (!regex.hasMatch(value)) {
      return ("Enter Valid data");
    }
    return null;
  }

  final List<String> list = [
    'Wayanad',
    'Caliut',
    'kanuur',
    'Thiruvananthapuram',
    'Alappuzha',
    'Kochi',
  ];

  TextEditingController clientController = TextEditingController();
  TextEditingController secretController = TextEditingController();

  appLoginFuncation(BuildContext context) {
    log("Login App");
    ApiserviceloginApp().loginAppFunction(
      context,
      LoginAppModel(
        clientId: clientController.text,
        secret: secretController.text,
      ),
    );
  }

  TextEditingController usernamecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController selectBrachController = TextEditingController();

  void userLoginFuncation(context) {
    ApiserviceloginUser().loginUserFunction(
      context,
      LoginUserModel(
        username: usernamecontroller.text,
        password: passwordcontroller.text,
        location: selectBrachController.text,
      ),
    );
  }

  List<String> location = [""];
  LoginLocationModel? selectedlocationID;
  // String? locationID;
  String? chosenlocation;
  String? selectedLocationid;

  getLoginUserLocation(context) {
    ApiserviceLoginUserLocation().loginUserLoctionFunction(context);
    log(selectedlocationID?.glId.toString() ?? "NOT FOUND");
  }

  void getUserLocation(context) async {
    final response = await getLoginUserLocation(context);
    location.addAll(response);
    notifyListeners();
    log("Location respone$response");
  }
}
