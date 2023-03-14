import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:oditbiz/app/custom/table_heading.dart';
import 'package:oditbiz/app/page/group/bloc/group_rearch/group_cubit.dart';
import 'package:oditbiz/app/page/group/bloc/group_report/group_report_cubit.dart';
import 'package:oditbiz/app/page/group/model/group_report_model.dart';
import 'package:oditbiz/app/page/ledger/model/ledger_table.dart';
import 'package:oditbiz/app/resources/pref_resources.dart';
import 'package:oditbiz/app/routes/page_routes.dart';
import 'package:sizer/sizer.dart';
import 'package:zoom_widget/zoom_widget.dart';

class GropReportTableScreen extends StatefulWidget {
  const GropReportTableScreen({super.key});

  @override
  State<GropReportTableScreen> createState() => _GropReportTableScreenState();
}

class _GropReportTableScreenState extends State<GropReportTableScreen> {
  String statementType = Get.arguments["statementType"] ?? "";

  @override
  dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }

  List<String> list = <String>[
    '50',
    '100',
    '200',
    '300',
    '400',
  ];

  String rowsPerPage = "50";

  @override
  Widget build(BuildContext context) {
    final hegth = MediaQuery.of(context).size.height;
    final bloc = BlocProvider.of<GroupReportCubit>(context);
    return WillPopScope(
      onWillPop: () async {
        Get.offAndToNamed(PageRoutes.groupReportScreen);
        return true;
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            'Ledger Report',
            style: TextStyle(color: Colors.black),
          ),
          leading: IconButton(
            onPressed: () {
              Get.offAndToNamed(PageRoutes.groupReportScreen);
            },
            icon: const Icon(
              Icons.arrow_back_outlined,
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: bloc.gropReportModel.isEmpty
            ? SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text("No Data"),
                    // Lottie.asset(
                    //     "assets/animation/97434-no-data-available.json"),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(15)),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Check Another Date",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30)
                  ],
                ),
              )
            : OrientationBuilder(
                builder: (context, orientation) {
                  if (orientation == Orientation.portrait) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 16, top: 1, right: 16),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    "7",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                    ),
                                  ),
                                  Text(
                                    "OPENING STOCK",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Total Rows",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromARGB(255, 87, 86, 84),
                                    ),
                                  ),
                                  Text(
                                    "From : ${bloc.fromTimeController.text.isEmpty ? bloc.fromAndTo : bloc.fromTimeController.text}",
                                    style: const TextStyle(
                                      fontSize: 15,
                                      color: Color.fromARGB(255, 87, 86, 84),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Showing 7-7",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromARGB(255, 87, 86, 84),
                                    ),
                                  ),
                                  Text(
                                    "To : ${bloc.toTimeController.text.isEmpty ? bloc.fromAndTo : bloc.toTimeController.text}",
                                    style: const TextStyle(
                                      fontSize: 15,
                                      color: Color.fromARGB(255, 87, 86, 84),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        tablePagination(bloc.gropReportModel),
                        BlocBuilder<GroupReportCubit, GroupReportState>(
                          builder: (context, state) {
                            if (state is GroupReportLoaded) {
                              return SizedBox(
                                height: 67.1.h,
                                width: double.infinity,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8, right: 8, bottom: 8),
                                  child: SizedBox(
                                    height: hegth * 1,
                                    width: hegth * 2,
                                    child: InteractiveViewer(
                                      boundaryMargin: const EdgeInsets.all(20),
                                      minScale: 0.1,
                                      maxScale: 1.6,
                                      child: Zoom(
                                        centerOnScale: false,
                                        initTotalZoomOut: false,
                                        enableScroll: true,
                                        doubleTapZoom: true,
                                        opacityScrollBars: 0,
                                        scrollWeight: 10,
                                        backgroundColor: Colors.transparent,
                                        child: _createDataTable(
                                            context, state.groupReportModel),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }
                            return const SizedBox.shrink();
                          },
                        ),
                      ],
                    );
                  } else {
                    return Column(
                      children: [
                        tablePagination(bloc.gropReportModel),
                        BlocBuilder<GroupReportCubit, GroupReportState>(
                          builder: (context, state) {
                            if (state is GroupReportLoaded) {
                              return SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.59,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8, right: 8, bottom: 8),
                                  child: SizedBox(
                                    child: InteractiveViewer(
                                      boundaryMargin: const EdgeInsets.all(20),
                                      minScale: 0.1,
                                      maxScale: 1.6,
                                      child: Zoom(
                                        centerOnScale: false,
                                        initTotalZoomOut: false,
                                        enableScroll: true,
                                        doubleTapZoom: true,
                                        opacityScrollBars: 0,
                                        scrollWeight: 10,
                                        backgroundColor: Colors.transparent,
                                        child: _createDataTable(
                                            context, state.groupReportModel),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }
                            return const SizedBox.shrink();
                          },
                        ),
                      ],
                    );
                  }
                },
              ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FloatingActionButton(
            onPressed: () {
              setState(() {
                bloc.isRotation = !bloc.isRotation;
                bloc.isRotation
                    ? bloc.rotationOFFfunction()
                    : bloc.rotationFunction();
              });
            },
            backgroundColor: const Color(0xFF680E2A),
            child: const Icon(
              Icons.wifi_protected_setup,
              size: 30,
            ),
          ),
        ),
      ),
    );
  }

  DataTable _createDataTable(
      BuildContext context, List<GropReportModel> ledgerTableData) {
    List<String> columns = [];
    if (statementType == PrefResources.ROUT_NULL) {
      columns = [
        'Particulars',
        'Address1',
        'Address2',
        'Mobile',
        'Opening Dr',
        'Opening Cr',
        'Debit',
        'Credit',
        'Closing Dr',
        'Closing Cr'
      ];
    } else if (statementType == PrefResources.ROUT_AND_SALESMAN) {
      columns = [
        "Particulars",
        "Salesman",
        "Rout",
        "OpeningBalance",
        "Debit",
        "Credit",
        "ClosingBalance"
      ];
    } else if (statementType == PrefResources.SALES_MAN_WISE_GROUP) {
      columns = [
        "Particulars",
        "Salesman",
        "Rout",
        "OpeningBalance",
        "Debit",
        "Credit",
        "ClosingBalance"
      ];
    }

    return DataTable(
        columns: createDynamicColumns(column: columns),
        border: TableBorder.all(color: Colors.grey),
        headingRowHeight: MediaQuery.of(context).size.height * 0.07,
        dataRowColor: MaterialStateColor.resolveWith(
            (states) => const Color.fromARGB(255, 245, 247, 248)),
        headingRowColor: MaterialStateColor.resolveWith(
            (states) => const Color.fromARGB(255, 74, 82, 89)),
        rows: _createRows(ledgerTableData));
  }

  List<DataRow> _createRows(List<GropReportModel> gropReportModelData) {
    log('Ledger datas => $gropReportModelData');
    log("Ledger Table Items Length => ${gropReportModelData.length}");

    return gropReportModelData.map((e) {
      if (statementType == PrefResources.ROUT_NULL) {
        return DataRow(
          cells: [
            DataCell(Text("${e.particulars ?? ''}")),
            DataCell(Text("${e.address1 ?? ''}")),
            DataCell(Text("${e.address2 ?? ''}")),
            DataCell(Text('${e.contact ?? ''}')),
            DataCell(columnAlignRight(
                alignment: Alignment.centerRight,
                text: "${e.openingDr ?? '0'}")),
            DataCell(columnAlignRight(
                alignment: Alignment.centerRight,
                text: "${e.openingCr ?? '0'}")),
            DataCell(columnAlignRight(
                alignment: Alignment.centerRight, text: "${e.debit ?? '0'}")),
            DataCell(columnAlignRight(
                alignment: Alignment.centerRight, text: "${e.credit ?? '0'}")),
            DataCell(columnAlignRight(
                alignment: Alignment.centerRight,
                text: "${e.closingDr ?? '0'}")),
            DataCell(columnAlignRight(
                alignment: Alignment.centerRight,
                text: "${e.closingCr ?? '0'}"))
          ],
        );
      } else if (statementType == PrefResources.ROUT_AND_SALESMAN) {
        return DataRow(
          cells: [
            DataCell(Text("${e.particulars ?? ''}")),
            DataCell(Text("${e.salesman ?? ''}")),
            DataCell(Text("${e.rout ?? ''}")),
            DataCell(columnAlignRight(
                alignment: Alignment.centerRight,
                text: '${e.openingBalance ?? '0'}')),
            DataCell(columnAlignRight(
                alignment: Alignment.centerRight, text: "${e.debit ?? '0'}")),
            DataCell(columnAlignRight(
                alignment: Alignment.centerRight, text: "${e.credit ?? '0'}")),
            DataCell(columnAlignRight(
                alignment: Alignment.centerRight,
                text: "${e.closingBalance ?? '0'}")),
          ],
        );
      } else {
        return DataRow(
          cells: [
            DataCell(Text("${e.particulars ?? ''}")),
            DataCell(Text("${e.address1 ?? ''}")),
            DataCell(Text("${e.address2 ?? ''}")),
            DataCell(Text('${e.contact ?? ''}')),
            DataCell(Text("${e.openingDr ?? ''}")),
            DataCell(Text("${e.openingCr ?? ''}")),
            DataCell(Text("${e.debit ?? ''}")),
            DataCell(Text("${e.credit ?? ''}")),
            DataCell(Text("${e.closingDr ?? ''}")),
            DataCell(Text("${e.closingCr ?? ''}"))
          ],
        );
      }
    }).toList();
  }

  columnAlignRight({required Alignment alignment, required String text}) =>
      Container(
          width: double.infinity,
          alignment: alignment,
          child: Text(double.parse(text).toStringAsFixed(2)));

  int pagecount = 1;

  tablePagination(List<GropReportModel> ledgerTableData) {
    final totalrowcount = ledgerTableData.length / int.parse(rowsPerPage);
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Divider(
            color: Colors.black,
            thickness: 1,
          ),
        ),
        SizedBox(
          height: 6.5.h,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    const Text("Rows Per Page :  "),
                    DropdownButton<String>(
                      value: rowsPerPage,
                      icon: const Icon(Icons.arrow_drop_down),
                      onChanged: (String? value) {
                        setState(() {
                          rowsPerPage = value!;
                        });
                      },
                      items: list.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                      "$pagecount - ${totalrowcount.toInt()} / ${ledgerTableData.length}"),
                  pagecount > 1
                      ? IconButton(
                          onPressed: () {
                            setState(() {
                              if (pagecount > 1) {
                                pagecount--;
                              } else {
                                return;
                              }
                            });
                            context.read<GroupReportCubit>().totalRowsPerPage =
                                int.parse(rowsPerPage);
                            context
                                .read<GroupReportCubit>()
                                .getPaginatedDataPrevious();
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios_new,
                            size: 15,
                            color: Colors.blue,
                          ),
                        )
                      : const SizedBox.shrink(),
                  pagecount < totalrowcount.toInt()
                      ? IconButton(
                          onPressed: () {
                            if (pagecount < totalrowcount.toInt()) {
                              pagecount++;
                              setState(() {});
                            } else {
                              return;
                            }
                            context.read<GroupReportCubit>().totalRowsPerPage =
                                int.parse(rowsPerPage);
                            context
                                .read<GroupReportCubit>()
                                .getPaginatedDataNext();
                          },
                          icon: const Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.blue,
                            size: 15,
                          ),
                        )
                      : const SizedBox(width: 30),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
