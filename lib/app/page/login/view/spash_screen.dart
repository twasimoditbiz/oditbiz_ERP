import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oditbiz/app/resources/pref_resources.dart';
import 'package:oditbiz/app/routes/page_routes.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    init();
  }

  init() async {
    // macAddress = await getMacAddress();
    final sharedPref = await SharedPreferences.getInstance();
    bool isLoaginPage = true;
    if (sharedPref.containsKey(PrefResources.TOKENUSER)) {
      if (sharedPref.getString(PrefResources.TOKENUSER) != null) {
        if (sharedPref.getString(PrefResources.TOKENUSER)!.isNotEmpty) {
          isLoaginPage = false;
          Get.offAllNamed(PageRoutes.bottomNavigationScreen);
        }
      }
    }
    if (isLoaginPage) {
      Get.offAllNamed(PageRoutes.login);
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(
                color: Colors.blue,
              strokeWidth: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
