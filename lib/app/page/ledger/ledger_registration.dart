import 'dart:developer';
import 'package:custom_searchable_dropdown/custom_searchable_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:oditbiz/app/page/ledger/ledger_table_screen.dart';

// ignore: must_be_immutable
class LedgerRegistration extends StatefulWidget {
  const LedgerRegistration({Key? key}) : super(key: key);

  @override
  State<LedgerRegistration> createState() => _LedgerRegistrationState();
}

class _LedgerRegistrationState extends State<LedgerRegistration> {
  TextEditingController ledgercontroller = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController timecontroller = TextEditingController();

  final formKee = GlobalKey<FormState>();

  String fromandto = DateFormat('dd/MM/yyyy').format(DateTime.now());

  final List<String> headlist = [
    'may name',
    'user name',
    'first person',
    'second person',
    'head master',
    'leader'
  ];
  String? selected;
  bool agree = false;

  @override
  Widget build(BuildContext context) {
    final heigth = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back, color: Colors.black),
        ),
        title: const Text(
          "Add Ledger",
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKee,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 23, left: 23, top: 29),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Ledger     ",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: heigth * 0.0188,
                        color: const Color(0xFF838383),
                      ),
                    ),
                    SizedBox(
                      height: heigth * 0.06,
                      width: width * 0.3,
                      child: CustomSearchableDropDown(
                        items: headlist,
                        dropdownHintText: "Search...",
                        searchBarHeight: heigth * 0.1,
                        menuPadding: const EdgeInsets.all(15),
                        padding: const EdgeInsets.only(top: 5),
                        dropdownItemStyle: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: heigth * 0.017,
                          color: const Color(0xFF838383),
                        ),
                        label: 'Select Ledger',
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.7),
                              spreadRadius: 0.5,
                              blurRadius: 0.5,
                              offset: const Offset(0, 0.5),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        dropDownMenuItems: headlist,
                        onChanged: (value) {
                          if (value != null) {
                            selected = value;
                          } else {
                            selected = null;
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 23, left: 23, top: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "From",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: heigth * 0.0188,
                            color: const Color(0xFF838383),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Container(
                            height: heigth * 0.05,
                            width: width * 0.3,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.7),
                                  spreadRadius: 0.5,
                                  blurRadius: 0.5,
                                  offset: const Offset(0, 0.5),
                                ),
                              ],
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: TextFormField(
                              readOnly: true,
                              onTap: () async {
                                DateTime? pickedDate = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(1900),
                                  lastDate: DateTime(2200),
                                );
                                if (pickedDate != null) {
                                  String formattedDate =
                                      DateFormat("dd/MM/yyyy")
                                          .format(pickedDate);
                                  setState(() {
                                    dateController.text =
                                        formattedDate.toString();
                                  });
                                } else {
                                  log("Not selected");
                                }
                              },
                              controller: dateController,
                              decoration: InputDecoration(
                                suffixIcon: const Icon(
                                  Icons.calendar_today_rounded,
                                  color: Colors.black,
                                  size: 13,
                                ),
                                contentPadding:
                                    const EdgeInsets.only(left: 10, top: 5),
                                hintText: fromandto.toString(),
                                hintStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                ),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15, bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "To",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: heigth * 0.0188,
                              color: const Color(0xFF838383),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: heigth * 0.07),
                            child: Container(
                              height: heigth * 0.05,
                              width: width * 0.3,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.7),
                                    spreadRadius: 0.5,
                                    blurRadius: 0.5,
                                    offset: const Offset(0, 0.5),
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: TextFormField(
                                readOnly: true,
                                onTap: () async {
                                  DateTime? pickedDate = await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(1900),
                                    lastDate: DateTime(2200),
                                  );
                                  if (pickedDate != null) {
                                    String formattedDate =
                                        DateFormat("dd/MM/yyyy")
                                            .format(pickedDate);
                                    setState(() {
                                      timecontroller.text =
                                          formattedDate.toString();
                                    });
                                  } else {
                                    log("Not selected");
                                  }
                                },
                                controller: timecontroller,
                                decoration:  InputDecoration(
                                  suffixIcon:const Icon(
                                    Icons.calendar_today_rounded,
                                    color: Colors.black,
                                    size: 13,
                                  ),
                                  contentPadding:
                                     const EdgeInsets.only(left: 10, top: 5),
                                  hintText: fromandto.toString(),
                                  hintStyle:const TextStyle(
                                    color: Colors.black,
                                    fontSize: 13,
                                  ),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: agree,
                          onChanged: (value) {
                            setState(() {
                              agree = value ?? false;
                            });
                          },
                        ),
                        Text(
                          'Exclude Pending Cheque',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: heigth * 0.0188,
                            color: const Color(0xFF838383),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Material(
                        color: const Color(0xFF680E2A),
                        elevation: 7,
                        shadowColor: Colors.black,
                        borderRadius: BorderRadius.circular(8),
                        child: MaterialButton(
                          height: MediaQuery.of(context).size.height * 0.05,
                          minWidth: width * 0.2,
                          onPressed: () {
                            if (formKee.currentState!.validate()) {
                              agree
                                  ? Navigator.of(context).push(
                                      MaterialPageRoute(
                                          builder: (ctx) =>
                                              LedgerTableScreen()))
                                  : Navigator.of(context).push(
                                      MaterialPageRoute(
                                          builder: (ctx) =>
                                              LedgerTableScreen()));
                            }
                          },
                          child: const Text(
                            'Search',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontFamily: "poppins",
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
