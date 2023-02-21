import 'dart:developer';
import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:oditbiz/app/custom/sncakbar.dart';
import 'package:oditbiz/app/page/recipts/receipt_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  void togglePasswordView() {
    setState(() {
      isHidden = !isHidden;
    });
  }

  final formKey = GlobalKey<FormState>();

  bool isHidden = true;

  TextEditingController usernamecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController jobRoleSearchDropdownCtrl = TextEditingController();

  final List<String> list = [
    'Wayanad',
    'Caliut',
    'kanuur',
    'Thiruvananthapuram',
    'Alappuzha',
    'Kochi'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
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
                  "Login to your Account",
                  style: TextStyle(
                    fontSize: 17,
                    fontFamily: "poppins",
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF383838),
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
                          controller: usernamecontroller,
                          decoration: const InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            contentPadding: EdgeInsets.all(13),
                            hintText: "Username",
                            hintStyle: TextStyle(
                              fontFamily: "poppins",
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
                          obscureText: isHidden,
                          controller: passwordcontroller,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding: const EdgeInsets.all(13),
                            hintText: "Password",
                            hintStyle: const TextStyle(
                              fontFamily: "poppins",
                              fontSize: 14,
                              color: Color(0xFF838383),
                            ),
                            suffixIcon: InkWell(
                              onTap: togglePasswordView,
                              child: Icon(
                                isHidden
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
                          child: CustomDropdown.search(
                            errorBorderSide: const BorderSide(
                              color: Color.fromARGB(255, 237, 99, 89),
                              width: 1,
                            ),
                            selectedStyle: const TextStyle(
                              fontFamily: "poppins",
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(0),
                            fillColor: Colors.white,
                            hintText: 'Select Branch',
                            hintStyle: const TextStyle(
                              fontFamily: "poppins",
                              fontSize: 14,
                              color: Color(0xFF838383),
                            ),
                            items: list,
                            controller: jobRoleSearchDropdownCtrl,
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
                              log("message");
                              if (formKey.currentState!.validate()) {
                                showSnackBar(context, "Authentication success");
                                Navigator.pushNamed(context, "/home");
                              }
                            },
                            child: const Text(
                              'Login',
                              style: TextStyle(
                                fontFamily: "poppins",
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
