import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:oditbiz/app/controller/bottom_controller.dart';
import 'package:oditbiz/app/controller/ledger_report.dart';
import 'package:oditbiz/app/controller/ledger_search.dart';
import 'package:oditbiz/app/controller/login_page.dart';
import 'package:oditbiz/app/custom/textshadow.dart';
import 'package:oditbiz/app/routes/pageroutes.dart';
import 'package:provider/provider.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LedgerSearchController(_)),
        ChangeNotifierProvider(create: (_) => LedgerReportController(_)),
        ChangeNotifierProvider(create: (_) => LoginPageController(_)),
        ChangeNotifierProvider(create: (_) => BottomNavigationController()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/BottomNavigationScreen',
      routes: PageRoutes.routes,
      theme: ThemeData(
        fontFamily: "poppins",
        primarySwatch: Colors.blue,
        inputDecorationTheme: InputDecorationTheme(
          border: DecoratedInputBorder(
            child: const OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(
                Radius.circular(3.0),
              ),
            ),
            shadow: const BoxShadow(
              color: Color.fromARGB(255, 214, 210, 210),
              blurRadius: 7,
              offset: Offset.zero,
            ),
          ),
        ),
      ),
    );
  }
}





// import 'dart:developer';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:intl/intl.dart';
// import 'package:oditbiz/app/controller/ledger_report.dart';
// import 'package:oditbiz/app/model/ledger_table.dart';
// import 'package:provider/provider.dart';
// import 'package:zoom_widget/zoom_widget.dart';

// class LedgerTableScreen extends StatefulWidget {
//   const LedgerTableScreen({super.key});

//   @override
//   State<LedgerTableScreen> createState() => _LedgerTableScreenState();
// }

// class _LedgerTableScreenState extends State<LedgerTableScreen> {
//   late List<LedgerReportResponseModel> tableData;
//   void rotationFunction() {
//     SystemChrome.setPreferredOrientations([
//       DeviceOrientation.landscapeRight,
//       DeviceOrientation.landscapeLeft,
//     ]);
//   }

//   bool isRotation = true;

//   void rotationOFFfunction() {
//     SystemChrome.setPreferredOrientations([
//       DeviceOrientation.portraitUp,
//       DeviceOrientation.portraitDown,
//     ]);
//   }

//   @override
//   void initState() {
//     super.initState();
//     // context.read<LedgerReportController>().ledgerTableData;
//   }

//   @override
//   dispose() {
//     SystemChrome.setPreferredOrientations([
//       DeviceOrientation.portraitUp,
//       DeviceOrientation.portraitDown,
//     ]);
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final hegth = MediaQuery.of(context).size.height;
//     log("====================>$tableData");
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         title: const Text(
//           'Ledger Report',
//           style: TextStyle(color: Colors.black),
//         ),
//         leading: IconButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           icon: const Icon(
//             Icons.arrow_back_outlined,
//             color: Colors.black,
//           ),
//         ),
//         backgroundColor: Colors.white,
//         elevation: 0,
//       ),
//       body: OrientationBuilder(
//         builder: (context, orientation) {
//           if (orientation == Orientation.portrait) {
//             return SingleChildScrollView(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(left: 16, top: 1, right: 16),
//                     child: Column(
//                       children: [
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: const [
//                             Text(
//                               "7",
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 17,
//                               ),
//                             ),
//                             Text(
//                               "OPENING STOCK",
//                               style: TextStyle(
//                                   fontWeight: FontWeight.bold, fontSize: 17),
//                             ),
//                           ],
//                         ),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             const Text(
//                               "Total Rows",
//                               style: TextStyle(
//                                 fontSize: 15,
//                                 color: Color.fromARGB(255, 87, 86, 84),
//                               ),
//                             ),
//                             Text(
//                               "From : ${DateFormat('dd-MM-yyyy').format(DateTime.now())}",
//                               style: const TextStyle(
//                                 fontSize: 15,
//                                 color: Color.fromARGB(255, 87, 86, 84),
//                               ),
//                             ),
//                           ],
//                         ),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             const Text(
//                               "Showing 7-7",
//                               style: TextStyle(
//                                 fontSize: 15,
//                                 color: Color.fromARGB(255, 87, 86, 84),
//                               ),
//                             ),
//                             Text(
//                               "To : ${DateFormat('dd-MM-yyyy').format(DateTime.now())}",
//                               style: const TextStyle(
//                                 fontSize: 15,
//                                 color: Color.fromARGB(255, 87, 86, 84),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(16.0),
//                     child: SizedBox(
//                       height: hegth * 0.7,
//                       width: double.infinity,
//                       child: InteractiveViewer(
//                         boundaryMargin: const EdgeInsets.all(double.infinity),
//                         maxScale: 21,
//                         minScale: 1,
//                         panEnabled: true,
//                         child: Zoom(
//                           centerOnScale: false,
//                           initTotalZoomOut: true,
//                           enableScroll: true,
//                           doubleTapZoom: true,
//                           opacityScrollBars: 0,
//                           scrollWeight: 10,
//                           backgroundColor: Colors.transparent,
//                           child: _createDataTable(context),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             );
//           } else {
//             return SingleChildScrollView(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: SizedBox(
//                       height: hegth,
//                       width: double.infinity,
//                       child: InteractiveViewer(
//                         maxScale: 21,
//                         minScale: 1,
//                         panEnabled: true,
//                         child: Zoom(
//                           centerOnScale: false,
//                           initTotalZoomOut: true,
//                           enableScroll: true,
//                           doubleTapZoom: true,
//                           opacityScrollBars: 0,
//                           scrollWeight: 10,
//                           backgroundColor: Colors.transparent,
//                           child: _createDataTable(context),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             );
//           }
//         },
//       ),
//       floatingActionButton: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: FloatingActionButton(
//           onPressed: () {
//             setState(() {
//               isRotation = !isRotation;
//               isRotation ? rotationFunction() : rotationOFFfunction();
//             });
//           },
//           backgroundColor: const Color(0xFF680E2A),
//           child: const Icon(
//             Icons.wifi_protected_setup,
//             size: 30,
//           ),
//         ),
//       ),
//     );
//   }

//   DataTable _createDataTable(BuildContext context) {
//     return DataTable(
//         columns: _createColumns(),
//         border: TableBorder.all(color: Colors.grey),
//         headingRowHeight: MediaQuery.of(context).size.height * 0.07,
//         dataRowColor: MaterialStateColor.resolveWith(
//             (states) => const Color.fromARGB(255, 245, 247, 248)),
//         headingRowColor: MaterialStateColor.resolveWith(
//             (states) => const Color.fromARGB(255, 74, 82, 89)),
//         rows: _createRows());
//   }

//   List<DataColumn> _createColumns() {
//     // return tableData!.map((e) =>DataColumn(label:Text(
//     //     ,
//     //       style: TextStyle(
//     //         fontWeight: FontWeight.bold,
//     //         color: Colors.white,
//     //         fontSize: 12,
//     //       ),
//     //     ), )).toList();
//     return [
//       const DataColumn(
//         label: Text(
//           'EntryNo',
//           style: TextStyle(
//             fontWeight: FontWeight.bold,
//             color: Colors.white,
//             fontSize: 12,
//           ),
//         ),
//       ),
//       const DataColumn(
//         label: Text(
//           'InvNo',
//           style: TextStyle(
//             fontWeight: FontWeight.bold,
//             color: Colors.white,
//             fontSize: 12,
//           ),
//         ),
//       ),
//       const DataColumn(
//         label: Text(
//           'DDate',
//           style: TextStyle(
//             fontWeight: FontWeight.bold,
//             color: Colors.white,
//             fontSize: 12,
//           ),
//         ),
//       ),
//       const DataColumn(
//         label: Text(
//           'EntryName',
//           style: TextStyle(
//             fontWeight: FontWeight.bold,
//             color: Colors.white,
//             fontSize: 12,
//           ),
//         ),
//       ),
//       const DataColumn(
//         label: Text(
//           "Particulars",
//           style: TextStyle(
//             fontWeight: FontWeight.bold,
//             color: Colors.white,
//             fontSize: 12,
//           ),
//         ),
//       ),
//       const DataColumn(
//         label: Text(
//           "Debit",
//           style: TextStyle(
//             fontWeight: FontWeight.bold,
//             color: Colors.white,
//             fontSize: 12,
//           ),
//         ),
//       ),
//       const DataColumn(
//         label: Text(
//           "Credit",
//           style: TextStyle(
//             fontWeight: FontWeight.bold,
//             color: Colors.white,
//             fontSize: 12,
//           ),
//         ),
//       ),
//     ];
//   }

//   List<DataRow> _createRows() {
//     return tableData
//         .map(
//           (e) => DataRow(
//             cells: [
//               // DataCell(FlutterLogo()),
//               DataCell(Text(e.balance)),
//               DataCell(Text(e.credit)),
//               DataCell(Text(e.dDate)),
//               DataCell(Text(e.debit)),
//               DataCell(Text(e.entryName)),

//               DataCell(Text(e.entryNo)),
//               DataCell(Text(e.invNo)),
//               // DataCell(Text(e.entryName)),
//             ],
//           ),
//         )
//         .toList();
//   }
// }
