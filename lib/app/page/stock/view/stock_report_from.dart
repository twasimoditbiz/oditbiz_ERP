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

    BlocProvider.of<GroupCubit>(context).getGroup();
    BlocProvider.of<RouteCubit>(context).getRoute();
    BlocProvider.of<SalesManCubit>(context).getSalesMan();
  }

  initStatementType() async {
    final db = getIt<MyDatabase>();
    statementType = await db.statementType();
  }

  String statementType = "";

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
        child: Form(
          
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 23, left: 23, top: 29),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                        await showDialog(
                          context: context,
                          builder: (context) => const GroupSearchDialog(),
                        );
                        setState(() {});
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
                                        groupCubit.selectedLedger?.label ??
                                            "Select Group",
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
                padding: const EdgeInsets.only(right: 23, left: 23, top: 29),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                        await showDialog(
                          context: context,
                          builder: (context) => const RouteSearchDialog(),
                        );
                        setState(() {});
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
                                        routeCubit.selectedLedger?.label ??
                                            "Select Route",
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
                padding: const EdgeInsets.only(right: 23, left: 23, top: 29),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                        await showDialog(
                          context: context,
                          builder: (context) => const SalesManSearchDialog(),
                        );
                        setState(() {});
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
                                        salesManCubit.selectedSalesMan?.label ??
                                            "Select",
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
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Material(
                            color: const Color(0xFF680E2A),
                            elevation: 7,
                            shadowColor: const Color(0xFF000000),
                            borderRadius: BorderRadius.circular(8),
                            child: MaterialButton(
                              height: MediaQuery.of(context).size.height * 0.05,
                              minWidth: width * 0.15,
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
                        ),
                        BlocListener<GroupReportCubit, GroupReportState>(
                          listener: (context, gropReportState) {
                            if (gropReportState is GroupReportLoading) {
                              SquareLoader.show(context);
                            }
                            if (gropReportState is GropReporValidationError) {
                              SquareLoader.dismiss();
                            }
                            if (gropReportState is GroupReportLoaded) {
                              LedgerLoader.dismiss();

                              if (gropReportState.groupReportModel.isEmpty) {
                                Fluttertoast.showToast(
                                  msg: "There is no data",
                                  backgroundColor: Styles.toastBackground,
                                  textColor: Styles.toastText,
                                );
                              } else {
                                Get.toNamed(PageRoutes.gropReportTableScreen,
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
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Material(
                              color: const Color(0xFF680E2A),
                              elevation: 7,
                              shadowColor: const Color(0xFF000000),
                              borderRadius: BorderRadius.circular(8),
                              child: MaterialButton(
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                                minWidth: width * 0.15,
                                onPressed: () async {
                                 
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
                                          asId: (readGroupCubit
                                                      .selectedGroupValue ??
                                                  0)
                                              .toInt(),
                                          routeId: readRouteCubit
                                                  .selectedRouteValue ??
                                              0,
                                          salesManId: readSalesManCubit
                                                  .selectedSalesManValue ??
                                              0,
                                          statementType: statementType,
                                          fromDate:
                                              bloc.fromTimeController.text,
                                          toDate: bloc.toTimeController.text,
                                        ));
                                    log("selectedGroupValue ${readGroupCubit.selectedGroupValue}");
                                  
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
