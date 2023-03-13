import 'dart:developer';
import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:oditbiz/app/custom/table_heading.dart';
import 'package:oditbiz/app/page/group/bloc/group_report/group_report_cubit.dart';
import 'package:oditbiz/app/page/group/view/widgets/group_report_table.dart';
import 'package:oditbiz/app/page/ledger/model/ledger_table.dart';
import 'package:sizer/sizer.dart';
import 'package:zoom_widget/zoom_widget.dart';

class GropReportTableScreen extends StatefulWidget {
  const GropReportTableScreen({super.key});

  @override
  State<GropReportTableScreen> createState() => _GropReportTableScreenState();
}

class _GropReportTableScreenState extends State<GropReportTableScreen> {
  @override
  dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }

  String statementType = Get.arguments["statementType"] ?? "";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final hegth = MediaQuery.of(context).size.height;
    final bloc = BlocProvider.of<GroupReportCubit>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Group Report',
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
          :
          // OrientationBuilder(
          //     builder: (context, orientation) {
                // if (orientation == Orientation.portrait) {
                  // return
                   Column(
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
                              children: [
                                Text(
                                  "${bloc.gropReportModel.length}",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  bloc.selectedGroup ?? "",
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
                                    fontSize: 14,
                                    color: Color.fromARGB(255, 87, 86, 84),
                                  ),
                                ),
                                Text(
                                  "From : ${bloc.fromTimeController.text.isEmpty ? bloc.fromAndTo : bloc.fromTimeController.text}",
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: Color.fromARGB(255, 87, 86, 84),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromARGB(255, 87, 86, 84),
                                  ),
                                ),
                                Text(
                                  "To : ${bloc.toTimeController.text.isEmpty ? bloc.fromAndTo : bloc.toTimeController.text}",
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: Color.fromARGB(255, 87, 86, 84),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      BlocBuilder<GroupReportCubit, GroupReportState>(
                        builder: (context, groupReportState) {
                          if (groupReportState is GroupReportLoaded) {
                            List<Map<String, dynamic>> data = [];
                            for (var e in groupReportState.groupReportModel) {
                              data.add(e.toJson());
                            }
                            return SizedBox(
                              height: bloc.isRotation ? 79.h : 79.w,
                              width: double.infinity,
                              child: SingleChildScrollView(
                                  child: SizedBox(
                                      // height:340.h,
                                      width: double.infinity,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 8, right: 8, bottom: 8),
                                        child: GroupReportTable(
                                            data: data,
                                            statementType: statementType),
                                      ))

                                  //

                                  ),
                            );
                          }
                          return const SizedBox.shrink();
                        },
                      ),
                    ],
                  ),
                  // ;
                // }
                // else {
                //   return Column(
                //     children: [
                //       BlocBuilder<GroupReportCubit, GroupReportState>(
                //         builder: (context, groupReportState) {
                //           if (groupReportState is GroupReportLoaded) {
                //             List<Map<String, dynamic>> data = [];
                //             for (var e in groupReportState.groupReportModel) {
                //               data.add(e.toJson());
                //             }
                //             return SizedBox(
                //               height: MediaQuery.of(context).size.height * 0.59,
                //               child: Padding(
                //                 padding: const EdgeInsets.only(
                //                     left: 8, right: 8, bottom: 8),
                //                 child: SizedBox(
                //                   child: GroupReportTable(
                //                     data: data,
                //                     statementType: statementType,
                //                   ),
                //                 ),
                //               ),
                //             );
                //           }
                //           return const SizedBox.shrink();
                //         },
                //       ),
                //     ],
                //   );
                // }
            //   },
            // ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          onPressed: () {
            setState(() {
              bloc.isRotation = !bloc.isRotation;
              bloc.isRotation
                  ? bloc.rotationFunction()
                  : bloc.rotationOFFfunction();
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

  int pagecount = 1;
}
