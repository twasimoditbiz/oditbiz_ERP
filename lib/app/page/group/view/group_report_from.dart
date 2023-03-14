import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:oditbiz/app/controller/ledger_search.dart';
import 'package:oditbiz/app/custom/custom_loader.dart';
import 'package:oditbiz/app/custom/group_search.dart';
import 'package:oditbiz/app/custom/ledger_search.dart';
import 'package:oditbiz/app/custom/loading.dart';
import 'package:oditbiz/app/custom/route_search.dart';
import 'package:oditbiz/app/custom/salesman_search.dart';
import 'package:oditbiz/app/db/database_helper.dart';
import 'package:oditbiz/app/page/group/bloc/group_rearch/group_cubit.dart';
import 'package:oditbiz/app/page/group/bloc/group_report/group_report_cubit.dart';
import 'package:oditbiz/app/page/group/bloc/route/route_cubit.dart';
import 'package:oditbiz/app/page/group/bloc/salesman/salesman_cubit.dart';
import 'package:oditbiz/app/page/group/model/group_report_model.dart';
import 'package:oditbiz/app/page/ledger/bloc/ledger_cubit.dart';
import 'package:oditbiz/app/page/ledger/bloc/ledger_rearch/ledger_search_cubit.dart';
import 'package:oditbiz/app/page/ledger/model/ledger_table.dart';
import 'package:oditbiz/app/resources/styles.dart';
import 'package:oditbiz/app/routes/page_routes.dart';
import 'package:oditbiz/di/di.dart';
import 'package:sizer/sizer.dart';

class GroupReportForm extends StatefulWidget {
  const GroupReportForm({Key? key}) : super(key: key);

  @override
  State<GroupReportForm> createState() => _GroupReportFormState();
}

class _GroupReportFormState extends State<GroupReportForm> {
  @override
  void initState() {
    super.initState();
    initStatementType();
    init();
  }

  init() async {
    // final db = getIt<MyDatabase>();

    // await db.statementType();
    clearAllFormData();
    BlocProvider.of<GroupCubit>(context).getGroup();
    BlocProvider.of<RouteCubit>(context).getRoute();
    BlocProvider.of<SalesManCubit>(context).getSalesMan();
  }

  clearAllFormData() {
    BlocProvider.of<GroupCubit>(context).clear();
    BlocProvider.of<RouteCubit>(context).clear();
    BlocProvider.of<SalesManCubit>(context).clear();
    BlocProvider.of<GroupReportCubit>(context).updateFromDate(DateTime.now());
    BlocProvider.of<GroupReportCubit>(context).updateToDate(DateTime.now());
  }

  initStatementType() async {
    final db = getIt<MyDatabase>();
    statementType = await db.statementType();
  }

  String statementType = "";

  @override
  void dispose() {
    // BlocProvider.of<GroupReportCubit>(context).clearAllData();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final heigth = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.height;
    final groupCubit = context.watch<GroupCubit>();
    final routeCubit = context.watch<RouteCubit>();
    final salesManCubit = context.watch<SalesManCubit>();

    final readGroupCubit = context.read<GroupCubit>();
    final readRouteCubit = context.read<RouteCubit>();
    final readSalesManCubit = context.read<SalesManCubit>();
    final bloc = BlocProvider.of<GroupReportCubit>(context);

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
          "Group Report",
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child:
            //  Form(
            //   key: bloc.formKee,
            //   child:
            Padding(
          padding: const EdgeInsets.only(right: 23, left: 23, top: 29),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Group     ",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: heigth * 0.0188,
                      color: const Color(0xFF838383),
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      await BlocProvider.of<GroupCubit>(context).getGroup();
                      await showDialog(
                        context: context,
                        builder: (context) => const GroupSearchDialog(),
                      );
                      setState(() {});
                    },
                    child: Container(
                      height: 6.h,
                      width: 57.w,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 221, 223, 234),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 1.5.w,
                                ),
                                SizedBox(
                                  width: 45.w,
                                  child: Text(
                                      groupCubit.selectedLedger?.label ??
                                          "Select Group",
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                      ),
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
              SizedBox(
                height: 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Route     ",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: heigth * 0.0188,
                      color: const Color(0xFF838383),
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      await BlocProvider.of<RouteCubit>(context).getRoute();
                      await showDialog(
                        context: context,
                        builder: (context) => const RouteSearchDialog(),
                      );
                      setState(() {});
                    },
                    child: Container(
                      height: 6.h,
                      width: 57.w,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 221, 223, 234),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 1.5.w,
                                ),
                                SizedBox(
                                  width: 45.w,
                                  child: Text(
                                      routeCubit.selectedLedger?.label ??
                                          "Select Route",
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                      ),
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
              SizedBox(
                height: 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Salesman",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: heigth * 0.0188,
                      color: const Color(0xFF838383),
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      await BlocProvider.of<SalesManCubit>(context)
                          .getSalesMan();

                      await showDialog(
                        context: context,
                        builder: (context) => const SalesManSearchDialog(),
                      );
                      setState(() {});
                    },
                    child: Container(
                      height: 6.h,
                      width: 57.w,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 221, 223, 234),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 1.5.w,
                                ),
                                SizedBox(
                                  width: 45.w,
                                  child: Text(
                                      salesManCubit.selectedSalesMan?.label ??
                                          "Select",
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                      ),
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
              // Column(
              //   children: [
              SizedBox(
                height: 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "From",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: heigth * 0.0188,
                      color: const Color(0xFF838383),
                    ),
                  ),
                  Container(
                      height: 6.h,
                      width: 57.w,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 221, 223, 234),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 4.w,
                            ),
                            SizedBox(
                              width: 45.w,
                              child: TextFormField(
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                ),
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
                                  // contentPadding: const EdgeInsets.only(
                                  //     left: 10, top: 5),
                                  hintText: bloc.fromAndTo.toString(),
                                  hintStyle: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  labelStyle: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            const Icon(
                              Icons.calendar_today_rounded,
                              color: Colors.black,
                              size: 13,
                            ),
                          ])),
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "To",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: heigth * 0.0188,
                      color: const Color(0xFF838383),
                    ),
                  ),
                  Container(
                      height: 6.h,
                      width: 57.w,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 221, 223, 234),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 4.w,
                            ),
                            SizedBox(
                              width: 45.w,
                              child: TextFormField(
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                ),
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
                                  hintText: bloc.fromAndTo.toString(),
                                  hintStyle: const TextStyle(
                                    color: Colors.black,
                                  ),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            const Icon(
                              Icons.calendar_today_rounded,
                              color: Colors.black,
                              size: 13,
                            ),
                          ]))
                ],
              ),
              SizedBox(
                height: 4.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Material(
                    color: const Color(0xFF680E2A),
                    elevation: 7,
                    shadowColor: const Color(0xFF000000),
                    borderRadius: BorderRadius.circular(8),
                    child: MaterialButton(
                      height: 4.h,
                      minWidth: 40.w,
                      onPressed: () async {
                        readGroupCubit.clear();
                        readRouteCubit.clear();
                        readSalesManCubit.clear();
                        bloc.updateFromDate(DateTime.now());
                        bloc.updateToDate(DateTime.now());

                        setState(() {});
                      },
                      child: const Text(
                        'Clear',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  BlocListener<GroupReportCubit, GroupReportState>(
                    listener: (context, gropReportState) {
                      log("gropReportState ${gropReportState}");
                      if (gropReportState is GroupReportLoading) {
                        SquareLoader.show(context);
                      }
                      if (gropReportState is GropReporValidationError) {
                        SquareLoader.dismiss();
                      }
                      if (gropReportState is GroupReportLoaded) {
                        SquareLoader.dismiss();

                        if (gropReportState.groupReportModel.isEmpty) {
                          Fluttertoast.showToast(
                            msg: "There is no data",
                            backgroundColor: Styles.toastBackground,
                            textColor: Styles.toastText,
                          );
                        } else {
                          Get.offAndToNamed(PageRoutes.gropReportTableScreen,
                              arguments: {
                                'statementType': statementType,
                              });
                        }
                      }
                      if (gropReportState is GroupReportError) {
                        LedgerLoader.dismiss();
                        Fluttertoast.showToast(
                          msg: "There is no data",
                          backgroundColor: Styles.toastBackground,
                          textColor: Styles.toastText,
                        );
                      }
                    },
                    child: Material(
                      color: const Color(0xFF680E2A),
                      elevation: 7,
                      shadowColor: const Color(0xFF000000),
                      borderRadius: BorderRadius.circular(8),
                      child: MaterialButton(
                        height: 4.h,
                        minWidth: 40.w,
                        onPressed: () async {
                          // if (bloc.formKee.currentState!.validate()) {
                          if (bloc.fromTimeController.text.isEmpty) {
                            bloc.updateFromDate(DateTime.now());
                          }
                          if (bloc.toTimeController.text.isEmpty) {
                            bloc.updateToDate(DateTime.now());
                          }
                          if (readGroupCubit.selectedLedger != null) {
                            bloc.updateGroup(
                                readGroupCubit.selectedLedger!.label);
                          }

                          bloc.getGropReport(
                              context,
                              GropReportPostData(
                                asId: (readGroupCubit.selectedGroupValue ?? 0)
                                    .toInt(),
                                routeId: readRouteCubit.selectedRouteValue ?? 0,
                                salesManId:
                                    readSalesManCubit.selectedSalesManValue ??
                                        0,
                                statementType: statementType,
                                fromDate: bloc.fromTimeController.text,
                                toDate: bloc.toTimeController.text,
                              ));
                          log("selectedGroupValue ${readGroupCubit.selectedGroupValue}");
                          // }
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
            ],
          ),
          // ]),
        ),
      ),
    );
  }
}
