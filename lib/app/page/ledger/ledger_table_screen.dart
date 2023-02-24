import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:oditbiz/app/controller/ledger_report.dart';
import 'package:oditbiz/app/model/ledger_table.dart';
import 'package:provider/provider.dart';
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
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16, top: 1, right: 16),
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
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: hegth * 1,
                      width: hegth * 2,
                      child: InteractiveViewer(
                        boundaryMargin: const EdgeInsets.all(20),
                        minScale: 0.1,
                        maxScale: 1.6,
                        child: Zoom(
                          centerOnScale: false,
                          initTotalZoomOut: true,
                          enableScroll: true,
                          doubleTapZoom: true,
                          opacityScrollBars: 0,
                          scrollWeight: 10,
                          backgroundColor: Colors.transparent,
                          child:
                              _createDataTable(context, ctrl.ledgerTableData),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          } else {
            return SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: hegth,
                      child: InteractiveViewer(
                        boundaryMargin: const EdgeInsets.all(20),
                        minScale: 0.1,
                        maxScale: 1.6,
                        child: Zoom(
                          centerOnScale: false,
                          initTotalZoomOut: true,
                          enableScroll: true,
                          doubleTapZoom: true,
                          opacityScrollBars: 0,
                          scrollWeight: 10,
                          backgroundColor: Colors.transparent,
                          child:
                              _createDataTable(context, ctrl.ledgerTableData),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
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
        columns: _createColumns(),
        border: TableBorder.all(color: Colors.grey),
        headingRowHeight: MediaQuery.of(context).size.height * 0.07,
        dataRowColor: MaterialStateColor.resolveWith(
            (states) => const Color.fromARGB(255, 245, 247, 248)),
        headingRowColor: MaterialStateColor.resolveWith(
            (states) => const Color.fromARGB(255, 74, 82, 89)),
        rows: _createRows(ledgerTableData));
  }

  List<DataColumn> _createColumns() {
    const textStyle = TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.white,
      fontSize: 12,
    );
    return [
      const DataColumn(
        label: Text(
          'EntryNo',
          style: textStyle,
        ),
      ),
      const DataColumn(
        label: Text(
          'InvNo',
          style: textStyle,
        ),
      ),
      const DataColumn(
        label: Text(
          'DDate',
          style: textStyle,
        ),
      ),
      const DataColumn(
        label: Text(
          'EntryName',
          style: textStyle,
        ),
      ),
      const DataColumn(
        label: Text(
          "Particulars",
          style: textStyle,
        ),
      ),
      const DataColumn(
        label: Text(
          "Debit",
          style: textStyle,
        ),
      ),
      const DataColumn(
        label: Text(
          "Credit",
          style: textStyle,
        ),
      ),
      const DataColumn(
        label: Text(
          "Balance",
          style: textStyle,
        ),
      ),
      const DataColumn(
        label: Text(
          "Remark",
          style: textStyle,
        ),
      ),
    ];
  }

  List<DataRow> _createRows(List<LedgerReportResponseModel> ledgerTableData) {
    return ledgerTableData
        .map(
          (e) => DataRow(
            cells: [
              DataCell(Text(e.entryNo.toString())),
              DataCell(Text(e.invNo.toString())),
              DataCell(Text(e.dDate.toString())),
              DataCell(Text(e.entryName.toString())),
              DataCell(Text(e.particulars.toString())),
              DataCell(Text(e.debit.toString())),
              DataCell(Text(e.credit.toString())),
              DataCell(Text(e.balance.toString())),
              DataCell(Text(e.remarks.toString())),
            ],
          ),
        )
        .toList();
  }
}
