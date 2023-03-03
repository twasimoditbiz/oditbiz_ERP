import 'dart:developer';
import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oditbiz/app/controller/login_page.dart';
import 'package:oditbiz/app/page/login/bloc/location/location_cubit.dart';
import 'package:oditbiz/app/page/recipts/receipt_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    super.initState();
    context.read<LocationCubit>().getLocation(context);
  }

  @override
  Widget build(BuildContext context) {
    final controllerRead = context.read<LoginPageController>();
    final controllerWatch = context.watch<LoginPageController>();
    return Scaffold(
      body: Form(
        key: controllerWatch.formKey,
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
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "/LoginApp");
                  },
                  child: const Text(
                    "Login to your Account",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF383838),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(17.0),
                  child: Column(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(right: 10, left: 10, top: 15),
                        child: TextFormField(
                          validator: validation,
                          controller: controllerWatch.usernamecontroller,
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
                        padding:
                            const EdgeInsets.only(right: 10, left: 10, top: 15),
                        child: TextFormField(
                          validator: validation,
                          obscureText: controllerWatch.isHidden,
                          controller: controllerWatch.passwordcontroller,
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
                              onTap: controllerRead.togglePasswordView,
                              child: Icon(
                                controllerWatch.isHidden
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(right: 10, left: 10, top: 15),
                        child: Container(
                          decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(255, 214, 210, 210),
                                blurRadius: 4.0,
                                spreadRadius: 0.9,
                              ),
                            ],
                          ),
                          child: BlocBuilder<LocationCubit, LocationState>(
                            builder: (context, state) {
                              log(state.toString());
                              if (state is LocationLoaded) {
                                final locationdata = state.loginLocationModel;
                                List<String> location = [];
                                for (var i = 0; i < locationdata.length; i++) {
                                  location
                                      .add(locationdata[i].glName.toString());
                                }
                                return CustomDropdown.search(
                                  errorBorderSide: const BorderSide(
                                    color: Color.fromARGB(255, 237, 99, 89),
                                    width: 1,
                                  ),
                                  selectedStyle: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                  borderRadius: BorderRadius.circular(0),
                                  fillColor: Colors.white,
                                  hintText: 'Select Branch',
                                  hintStyle: const TextStyle(
                                    fontSize: 14,
                                    color: Color(0xFF838383),
                                  ),
                                  items: location,
                                  controller:
                                      controllerWatch.selectBrachController,
                                  onChanged: (String? value) {
                                    log(controllerWatch.chosenlocation
                                        .toString());
                                    controllerWatch.chosenlocation = value;
                                    final data = state.loginLocationModel
                                        .singleWhere(
                                            (element) => element.glId == value);
                                    controllerWatch.selectedLocationid = data.glId;
                                    log("chosen location id ===>${controllerWatch.chosenlocation}");
                                    setState(() {});
                                  },
                                );
                              }
                              if (state is LocationError) {
                                log(state.error);
                              }
                              return const SizedBox.shrink();
                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding:
                            const EdgeInsets.only(right: 10, left: 10, top: 15),
                        child: Material(
                          color: const Color(0xFF680E2A),
                          elevation: 7,
                          shadowColor: Colors.black,
                          borderRadius: BorderRadius.circular(3),
                          child: MaterialButton(
                            height: MediaQuery.of(context).size.height * 0.068,
                            minWidth: MediaQuery.of(context).size.width * 1,
                            onPressed: () {
                              if (controllerWatch.formKey.currentState!
                                  .validate()) {
                                controllerRead.userLoginFuncation(context);
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
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
