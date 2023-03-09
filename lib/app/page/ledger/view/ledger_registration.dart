import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:oditbiz/app/controller/ledger_search.dart';
import 'package:oditbiz/app/custom/ledger_search.dart';
import 'package:oditbiz/app/custom/loading.dart';
import 'package:oditbiz/app/page/ledger/bloc/ledger_cubit.dart';
import 'package:oditbiz/app/routes/page_routes.dart';

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
    final bloc = BlocProvider.of<LedgerCubit>(context);
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
          key: bloc.formKee,
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
                                            "Select Ledger",
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
                                  bloc.updateFromDate(pickedDate);
                                  log(bloc.fromTimeController.text);
                                } else {
                                  log("Date is not selected");
                                }
                              },
                              controller: bloc.fromTimeController,
                              decoration: InputDecoration(
                                suffixIcon: const Icon(
                                  Icons.calendar_today_rounded,
                                  color: Colors.black,
                                  size: 13,
                                ),
                                contentPadding:
                                    const EdgeInsets.only(left: 10, top: 5),
                                hintText: bloc.fromAndTo.toString(),
                                hintStyle: const TextStyle(
                                  color: Colors.black,
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
                                    bloc.updateToDate(pickedDated);
                                    log(bloc.toTimeController.text);
                                  } else {
                                    log("Date is not selected");
                                  }
                                },
                                controller: bloc.toTimeController,
                                decoration: InputDecoration(
                                  suffixIcon: const Icon(
                                    Icons.calendar_today_rounded,
                                    color: Colors.black,
                                    size: 13,
                                  ),
                                  contentPadding:
                                      const EdgeInsets.only(left: 10, top: 5),
                                  hintText: bloc.fromAndTo.toString(),
                                  hintStyle: const TextStyle(
                                    color: Colors.black,
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
                          value: bloc.agree,
                          onChanged: (value) {
                            setState(() {
                              bloc.agree = value ?? false;
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
                        ),
                      ],
                    ),
                    BlocListener<LedgerCubit, LegerResponseState>(
                      listener: (context, ledgerState) {
                        log(ledgerState.toString());
                        if (ledgerState is LegerResponseLoading) {
                          LedgerLoader.show(context);
                        }
                        if (ledgerState is LegerResponseLoaded) {
                          LedgerLoader.dismiss();
                          Get.toNamed(PageRoutes.ledgerTableScreen);
                        }
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Material(
                          color: const Color(0xFF680E2A),
                          elevation: 7,
                          shadowColor: const Color(0xFF000000),
                          borderRadius: BorderRadius.circular(8),
                          child: MaterialButton(
                            height: MediaQuery.of(context).size.height * 0.05,
                            minWidth: width * 0.2,
                            onPressed: () async {
                              if (bloc.formKee.currentState!.validate()) {
                                bloc.getLedgerReport();
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
