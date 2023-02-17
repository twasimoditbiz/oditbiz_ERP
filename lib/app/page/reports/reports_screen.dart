import 'package:flutter/material.dart';

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
              Navigator.pushNamed(context, "/LedgerRegistration");
            },
            const Color.fromARGB(255, 39, 78, 235),
          ),
          buttons(
            context,
            "Group Report",
            () {
              Navigator.pushNamed(context, "/GroupReportScreen");
            },
            const Color.fromARGB(255, 39, 78, 235),
          ),
          buttons(
            context,
            "Cash Book",
            () {
              Navigator.pushNamed(context, "/CashBookScreen");
            },
            const Color.fromARGB(255, 39, 78, 235),
          ),
          buttons(
            context,
            "Balance Sheet",
            () {
              Navigator.pushNamed(context, "/BalanceSheetScreen");
            },
            const Color.fromARGB(255, 39, 78, 235),
          ),
          buttons(
            context,
            "Profit and Loss",
            () {
              Navigator.pushNamed(context, "/ProfitandLossScreen");
            },
            const Color.fromARGB(255, 39, 78, 235),
          ),
          buttons(
            context,
            "Day Book",
            () {
              Navigator.pushNamed(context, "/DayBookScreen");
            },
            const Color.fromARGB(255, 39, 78, 235),
          ),
          buttons(
            context,
            "Stock Report",
            () {
              Navigator.pushNamed(context, "/StockReportScreen");
            },
            const Color.fromARGB(255, 39, 78, 235),
          ),
          buttons(
            context,
            "Sales Report",
            () {
              Navigator.pushNamed(context, "/SalesReportScreen");
            },
            const Color.fromARGB(255, 39, 78, 235),
          ),
          buttons(
            context,
            "Day Sheet",
            () {
              Navigator.pushNamed(context, "/DaySheetScreen");
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
