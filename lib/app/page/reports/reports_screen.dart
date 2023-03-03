import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oditbiz/app/routes/page_routes.dart';

class ReportScreen extends StatelessWidget {
  const ReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
          const SizedBox(height: 50),
          buttons(
            context,
            "Ledger Report",
            () {
              Get.toNamed(PageRoutes.ledgerRegistration);
            },
            const Color.fromARGB(255, 39, 78, 235),
          ),
          buttons(
            context,
            "Group Report",
            () {
              Get.toNamed(PageRoutes.groupReportScreen);
            },
            const Color.fromARGB(255, 39, 78, 235),
          ),
          buttons(
            context,
            "Cash Book",
            () {
              Get.toNamed(PageRoutes.cashBookScreen);
            },
            const Color.fromARGB(255, 39, 78, 235),
          ),
          buttons(
            context,
            "Balance Sheet",
            () {
              Get.toNamed(PageRoutes.balanceSheetScreen);
            },
            const Color.fromARGB(255, 39, 78, 235),
          ),
          buttons(
            context,
            "Profit and Loss",
            () {
              Get.toNamed(PageRoutes.profitandLossScreen);
            },
            const Color.fromARGB(255, 39, 78, 235),
          ),
          buttons(
            context,
            "Day Book",
            () {
              Get.toNamed(PageRoutes.dayBookScreen);
            },
            const Color.fromARGB(255, 39, 78, 235),
          ),
          buttons(
            context,
            "Stock Report",
            () {
              Get.toNamed(PageRoutes.stockReportScreen);
            },
            const Color.fromARGB(255, 39, 78, 235),
          ),
          buttons(
            context,
            "Sales Report",
            () {
              Get.toNamed(PageRoutes.salesReportScreen);
            },
            const Color.fromARGB(255, 39, 78, 235),
          ),
          buttons(
            context,
            "Day Sheet",
            () {
              Get.toNamed(PageRoutes.daySheetScreen);
            },
            const Color.fromARGB(255, 39, 78, 235),
          ),
              ],
            ),
        ));
  }

  buttons(
    BuildContext context,
    String name,
    Function()? ontap,
    Color color,
  ) {
    return Padding(
      padding: const EdgeInsets.only(right: 13, left: 14, bottom: 20),
      child: Material(
        color: color,
        elevation: 7,
        shadowColor: Colors.black,
        borderRadius: BorderRadius.circular(3),
        child: InkWell(
          onTap: ontap,
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.068,
            width: MediaQuery.of(context).size.width * 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontFamily: "poppins",
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
