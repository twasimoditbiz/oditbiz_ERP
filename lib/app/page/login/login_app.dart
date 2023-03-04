import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:oditbiz/app/controller/login_page.dart';
import 'package:oditbiz/app/model/login_app_model.dart';
import 'package:oditbiz/app/page/login/bloc/app_login/app_login_cubit.dart';
import 'package:oditbiz/app/page/recipts/receipt_field.dart';
import 'package:oditbiz/app/routes/page_routes.dart';
import 'package:provider/provider.dart';

class LoginApp extends StatelessWidget {
  LoginApp({Key? key}) : super(key: key);

  final formKeys = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final controllerRead = context.read<LoginPageController>();
    return Scaffold(
      body: Form(
        key: formKeys,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                Image.asset(
                  "assets/images/Icon.png",
                  width: MediaQuery.of(context).size.width * 0.36,
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.06),
                const Text(
                  "Login to your App",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF383838),
                  ),
                ),
                BlocListener<AppLoginCubit, AppLoginState>(
                  listener: (context, appLoginState) {
                    if (appLoginState is AppLoginLoaded) {
                      if (appLoginState.appLoginModel.status!) {
                        Get.offAllNamed(PageRoutes.login);
                      }
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(17.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 10, left: 10, top: 15),
                          child: TextFormField(
                            validator: validation,
                            controller: controllerRead.clientController,
                            textInputAction: TextInputAction.next,
                            decoration: const InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              contentPadding: EdgeInsets.all(13),
                              hintText: "Username",
                              hintStyle: TextStyle(
                                fontSize: 14,
                                color: Color(0xFF838383),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 10, left: 10, top: 15),
                          child: TextFormField(
                            validator: validation,
                            obscureText: controllerRead.isHiddens,
                            controller: controllerRead.secretController,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              contentPadding: const EdgeInsets.all(13),
                              hintText: "Password",
                              hintStyle: const TextStyle(
                                fontSize: 14,
                                color: Color(0xFF838383),
                              ),
                              suffixIcon: InkWell(
                                onTap: controllerRead.togglePasswordViewed,
                                child: Icon(
                                  controllerRead.isHiddens
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 10, left: 10, top: 15),
                          child: Material(
                            color: const Color(0xFF680E2A),
                            elevation: 7,
                            shadowColor: Colors.black,
                            borderRadius: BorderRadius.circular(3),
                            child: MaterialButton(
                              height:
                                  MediaQuery.of(context).size.height * 0.068,
                              minWidth: MediaQuery.of(context).size.width * 1,
                              onPressed: () {
                                log("===${controllerRead.clientController.text} secret ${controllerRead.secretController.text.trim()}");
                                if (formKeys.currentState!.validate()) {
                                  BlocProvider.of<AppLoginCubit>(context)
                                      .getAppLogin(
                                          context,
                                          LoginAppModel(
                                              clientId: controllerRead.clientController.text.trim(),
                                              secret: controllerRead.secretController.text.trim()));
                                }
                              },
                              child: const Text(
                                'Login',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
