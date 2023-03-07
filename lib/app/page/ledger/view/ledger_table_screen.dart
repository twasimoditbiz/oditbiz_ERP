import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
import 'package:oditbiz/app/controller/ledger_report.dart';
import 'package:oditbiz/app/custom/table_heading.dart';
import 'package:oditbiz/app/page/ledger/model/ledger_table.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:zoom_widget/zoom_widget.dart';

class LedgerTableScreen extends StatefulWidget {
  const LedgerTableScreen({super.key});

  @override
  State<LedgerTableScreen> createState() => _LedgerTableScreenState();
}

class _LedgerTableScreenState extends State<LedgerTableScreen> {
  @override
  dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }

  List<String> list = <String>['100', '200', '300', '400','500'];
  String dropdownValue = "100";

  @override
  Widget build(BuildContext context) {
    final hegth = MediaQuery.of(context).size.height;
    final ctrl = context.watch<LedgerReportController>();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Ledger Report',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_outlined,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ctrl.ledgerTableData.isEmpty
          ? SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, bottom: 20, top: 50),
                    child: Lottie.asset(
                        "assets/animation/97434-no-data-available.json"),
                  ),
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
                        padding:
                            const EdgeInsets.only(left: 16, top: 1, right: 16),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Total Rows",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 87, 86, 84),
                                  ),
                                ),
                                Text(
                                  "From : ${ctrl.fromTimeController.text.isEmpty ? ctrl.fromAndTo : ctrl.fromTimeController.text}",
                                  style: const TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 87, 86, 84),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Showing 7-7",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 87, 86, 84),
                                  ),
                                ),
                                Text(
                                  "To : ${ctrl.toTimeController.text.isEmpty ? ctrl.fromAndTo : ctrl.toTimeController.text}",
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
                      tablePagination(ctrl.ledgerTableData),
                      SizedBox(
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
                                    context, ctrl.ledgerTableData),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                } else {
                  return Column(
                    children: [
                      tablePagination(ctrl.ledgerTableData),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.59,
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
                                    context, ctrl.ledgerTableData),
                              ),
                            ),
                          ),
                        ),
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
              ctrl.isRotation = !ctrl.isRotation;
              ctrl.isRotation
                  ? ctrl.rotationFunction()
                  : ctrl.rotationOFFfunction();
            });
          },
          backgroundColor: const Color(0xFF680E2A),
          child: const Icon(
            Icons.wifi_protected_setup,
            size: 30,
          ),
        ),
      ),
    );
  }

  DataTable _createDataTable(
      BuildContext context, List<LedgerReportResponseModel> ledgerTableData) {
    return DataTable(
        columns: createColumns(),
        border: TableBorder.all(color: Colors.grey),
        headingRowHeight: MediaQuery.of(context).size.height * 0.07,
        dataRowColor: MaterialStateColor.resolveWith(
            (states) => const Color.fromARGB(255, 245, 247, 248)),
        headingRowColor: MaterialStateColor.resolveWith(
            (states) => const Color.fromARGB(255, 74, 82, 89)),
        rows: _createRows(ledgerTableData));
  }

  List<DataRow> _createRows(List<LedgerReportResponseModel> ledgerTableData) {
    log('Ledger datas => $ledgerTableData');
    log(ledgerTableData.length.toString());
    return ledgerTableData
        .map(
          (e) => DataRow(
            cells: [
              DataCell(Text(e.entryNo.toString().trim())),
              DataCell(Text(e.invNo.toString().trim())),
              DataCell(Text(e.dDate.toString().trim())),
              DataCell(Text(e.entryName.toString().trim())),
              DataCell(Text(e.particulars.toString().trim())),
              DataCell(Text(e.debit.toString().trim())),
              DataCell(Text(e.credit.toString().trim())),
              DataCell(Text(e.balance.toString().trim())),
              DataCell(Text(e.remarks.toString().trim())),
            ],
          ),
        )
        .toList();
  }

  tablePagination(List<LedgerReportResponseModel> ledgerTableData) {
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
                    const Text("Rows Per Page :    "),
                    DropdownButton<String>(
                      value: dropdownValue,
                      icon: const Icon(Icons.arrow_drop_down),
                      onChanged: (String? value) {
                        setState(() {
                          dropdownValue = value!;
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
                  Text("01 - 20 / ${ledgerTableData.length}"),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_back_ios_new,
                      size: 15,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
