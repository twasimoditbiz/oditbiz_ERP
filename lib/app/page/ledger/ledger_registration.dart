import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oditbiz/app/controller/ledger_report.dart';
import 'package:oditbiz/app/controller/ledger_search.dart';
import 'package:oditbiz/app/custom/alertbox.dart';
import 'package:oditbiz/app/page/ledger/ledger_table_screen.dart';
import 'package:provider/provider.dart';

class LedgerRegistration extends StatefulWidget {
  const LedgerRegistration({Key? key}) : super(key: key);

  @override
  State<LedgerRegistration> createState() => _LedgerRegistrationState();
}

class _LedgerRegistrationState extends State<LedgerRegistration> {
  @override
  Widget build(BuildContext context) {
    final heigth = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.height;
    final ledgerSearchController = context.watch<LedgerSearchController>();
    final controllerRead = context.read<LedgerReportController>();
    final controllerWatch = context.read<LedgerReportController>();
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
          key: controllerWatch.formKee,
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
                    InkWell(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) => const CustomAlertDialog(),
                        );
                      },
                      child: Container(
                        height: heigth * 0.056,
                        width: width * 0.3,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.7),
                              spreadRadius: 0.8,
                              blurRadius: 0.8,
                              offset: const Offset(0, 0.5),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * 0.5,
                                    child: Text(
                                        ledgerSearchController
                                                .selectedLedger?.label ??
                                            "Select Branch",
                                        overflow: TextOverflow.ellipsis),
                                  ),
                                  const Icon(
                                    CupertinoIcons.chevron_down,
                                    size: 15,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
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
                                    firstDate: DateTime(1800),
                                    lastDate: DateTime(2100));
                                if (pickedDate != null) {
                                  controllerRead.updateFromDate(pickedDate);
                                  log(controllerWatch.fromTimeController.text);
                                } else {
                                  log("Date is not selected");
                                }
                              },
                              controller: controllerWatch.fromTimeController,
                              decoration: InputDecoration(
                                suffixIcon: const Icon(
                                  Icons.calendar_today_rounded,
                                  color: Colors.black,
                                  size: 13,
                                ),
                                contentPadding:
                                    const EdgeInsets.only(left: 10, top: 5),
                                hintText: controllerWatch.fromAndTo.toString(),
                                hintStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                ),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
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
                                  DateTime? pickedDated = await showDatePicker(
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime(1800),
                                      lastDate: DateTime(2100));
                                  if (pickedDated != null) {
                                    controllerRead.updateToDate(pickedDated);
                                    log(controllerWatch.toTimeController.text);
                                  } else {
                                    log("Date is not selected");
                                  }
                                },
                                controller: controllerWatch.toTimeController,
                                decoration: InputDecoration(
                                  suffixIcon: const Icon(
                                    Icons.calendar_today_rounded,
                                    color: Colors.black,
                                    size: 13,
                                  ),
                                  contentPadding:
                                      const EdgeInsets.only(left: 10, top: 5),
                                  hintText:
                                      controllerWatch.fromAndTo.toString(),
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
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: controllerWatch.agree,
                          onChanged: (value) {
                            setState(() {
                              controllerWatch.agree = value ?? false;
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
                        shadowColor:const Color(0xFF000000),
                        borderRadius: BorderRadius.circular(8),
                        child: MaterialButton(
                          height: MediaQuery.of(context).size.height * 0.05,
                          minWidth: width * 0.2,
                          onPressed: () {
                            if (controllerWatch.formKee.currentState!
                                .validate()) {
                              controllerRead.searchLedgerfuction(context);
                              Navigator.pushNamed(
                                  context, "/LedgerTableScreen");
                            }
                          },
                          child: const Text(
                            'Search',
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
            ],
          ),
        ),
      ),
    );
  }
}
