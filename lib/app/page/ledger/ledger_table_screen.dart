import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:oditbiz/app/controller/ledger_report.dart';
import 'package:provider/provider.dart';
import 'package:zoom_widget/zoom_widget.dart';

class LedgerTableScreen extends StatefulWidget {
  const LedgerTableScreen({super.key});

  @override
  State<LedgerTableScreen> createState() => _LedgerTableScreenState();
}

class _LedgerTableScreenState extends State<LedgerTableScreen> {
  void rotationFunction() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
  }

  bool isRotation = true;

  void rotationOFFfunction() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }

  final List<Map> _books = [
    {
      'id': 100,
      'title': 'Flutter Basics',
      'author': 'David John',
      'thwasim': 'name',
      'hello': 'iam'
    },
    {
      'id': 102,
      'title': 'Git and GitHub',
      'author': 'Merlin Nick',
      'thwasim': 'name',
      'hello': 'iam'
    },
    {
      'id': 101,
      'title': 'Flutter Basics',
      'author': 'David John',
      'thwasim': 'name',
      'hello': 'iam'
    },
    {
      'id': 104,
      'title': 'Flutter malaya',
      'author': 'mahaver',
      'thwasim': 'name',
      'hello': 'iam'
    },
    {
      'id': 104,
      'title': 'Flutter malaya',
      'author': 'mahaver',
      'thwasim': 'name',
      'hello': 'iam'
    },
    {
      'id': 104,
      'title': 'Flutter malaya',
      'author': 'mahaver',
      'thwasim': 'name',
      'hello': 'iam'
    },
    {
      'id': 104,
      'title': 'Flutter malaya',
      'author': 'mahaver',
      'thwasim': 'name',
      'hello': 'iam'
    },
    {
      'id': 104,
      'title': 'Flutter malaya',
      'author': 'mahaver',
      'thwasim': 'name',
      'hello': 'iam'
    },
    {
      'id': 104,
      'title': 'Flutter malaya',
      'author': 'mahaver',
      'thwasim': 'name',
      'hello': 'iam'
    },
  ];

  @override
  Widget build(BuildContext context) {
    final hegth = MediaQuery.of(context).size.height;
    final watchController = context.watch<LedgerReportController>();
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
                                  fontWeight: FontWeight.bold, fontSize: 17),
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
                              "From : ${watchController.fromTimeController.text.isEmpty ? watchController.fromAndTo : watchController.fromTimeController.text}",
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
                              "To : ${watchController.toTimeController.text.isEmpty ? watchController.fromAndTo : watchController.toTimeController.text}",
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
                      child: Zoom(
                        centerOnScale: false,
                        initTotalZoomOut: true,
                        enableScroll: true,
                        doubleTapZoom: true,
                        opacityScrollBars: 0,
                        scrollWeight: 10,
                        backgroundColor: Colors.transparent,
                        child: _createDataTable(context),
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
                      child: Zoom(
                        centerOnScale: false,
                        initTotalZoomOut: true,
                        enableScroll: true,
                        doubleTapZoom: true,
                        opacityScrollBars: 0,
                        scrollWeight: 10,
                        backgroundColor: Colors.transparent,
                        child: _createDataTable(context),
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
              isRotation = !isRotation;
              isRotation ? rotationFunction() : rotationOFFfunction();
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

  DataTable _createDataTable(BuildContext context) {
    return DataTable(
        columns: _createColumns(),
        border: TableBorder.all(color: Colors.grey),
        headingRowHeight: MediaQuery.of(context).size.height * 0.07,
        dataRowColor: MaterialStateColor.resolveWith(
            (states) => const Color.fromARGB(255, 245, 247, 248)),
        headingRowColor: MaterialStateColor.resolveWith(
            (states) => const Color.fromARGB(255, 74, 82, 89)),
        rows: _createRows());
  }

  List<DataColumn> _createColumns() {
    return [
      const DataColumn(
        label: Text(
          'EntryNo',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 12,
          ),
        ),
      ),
      const DataColumn(
        label: Text(
          'InvNo',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 12,
          ),
        ),
      ),
      const DataColumn(
        label: Text(
          'DDate',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 12,
          ),
        ),
      ),
      const DataColumn(
        label: Text(
          'EntryName',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 12,
          ),
        ),
      ),
      const DataColumn(
        label: Text(
          "Particulars",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 12,
          ),
        ),
      ),
      const DataColumn(
        label: Text(
          "Debit",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 12,
          ),
        ),
      ),
      const DataColumn(
        label: Text(
          "Credit",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 12,
          ),
        ),
      ),
    ];
  }

  List<DataRow> _createRows() {
    return _books
        .map(
          (book) => const DataRow(
            cells: [
              DataCell(FlutterLogo()),
              DataCell(Text("")),
              DataCell(Text("")),
              DataCell(Text('')),
              DataCell(Text('')),
              DataCell(Text('')),
              DataCell(FlutterLogo()),
            ],
          ),
        )
        .toList();
  }
}
