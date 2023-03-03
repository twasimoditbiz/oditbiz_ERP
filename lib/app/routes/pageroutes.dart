import 'package:flutter/cupertino.dart';
import 'package:oditbiz/app/page/bottom_nav/bottom_nav.dart';
import 'package:oditbiz/app/page/home/homepage.dart';
import 'package:oditbiz/app/page/ledger/ledger_registration.dart';
import 'package:oditbiz/app/page/ledger/ledger_table_screen.dart';
import 'package:oditbiz/app/page/login/login_account.dart';
import 'package:oditbiz/app/page/login/login_app.dart';
import 'package:oditbiz/app/page/payment/payment_screen.dart';
import 'package:oditbiz/app/page/payment/payment_search.dart';
import 'package:oditbiz/app/page/recipts/receipt_page.dart';
import 'package:oditbiz/app/page/recipts/recipts_serach_screen.dart';
import 'package:oditbiz/app/page/reports/balancesheet_screen.dart';
import 'package:oditbiz/app/page/reports/cashbook_screen.dart';
import 'package:oditbiz/app/page/reports/daybook_screen.dart';
import 'package:oditbiz/app/page/reports/daysheet_screen.dart';
import 'package:oditbiz/app/page/reports/group_report.dart';
import 'package:oditbiz/app/page/reports/profitandloss.dart';
import 'package:oditbiz/app/page/reports/salesreport_screen.dart';
import 'package:oditbiz/app/page/reports/stockreport_screen.dart';
import 'package:oditbiz/app/page/sales_order/add_product.dart';
import 'package:oditbiz/app/page/sales_order/cart_screen.dart';
import 'package:oditbiz/app/page/sales_order/sales_order.dart';
import 'package:oditbiz/app/page/sales_order/sales_order_detalis.dart';
import 'package:oditbiz/app/page/sales_order/sales_order_search.dart';

class PageRoutes {
  static Map<String, Widget Function(BuildContext context)> routes = {
    '/BottomNavigationScreen': (context) => const BottomNavigationScreen(),
    '/login': (context) =>  LoginPage(),
    '/home': (context) => const Homescreen(),
    "/LoginApp": (context) => const LoginApp(),
    '/LedgerRegistration': (context) => const LedgerRegistration(),
    '/ReceiptScreen': (context) => const ReceiptScreen(),
    '/PaymentScreen': (context) => PaymentScreen(),
    '/AddSalesOrderScreen': (context) => AddSalesOrderScreen(),
    '/AddProductScreen': (context) => const AddProductScreen(),
    '/ReciptsSearchScreen': (context) => const ReciptsSearchScreen(),
    '/PaymentSearchScreen': (context) => const PaymentSearchScreen(),
    '/SaleOrderSearchScreen': (context) => const SaleOrderSearchScreen(),
    '/CartScreen': (context) => const CartScreen(),
    "/SaleOrderDetalisScreen": (context) => const SaleOrderDetalisScreen(),
    "/GroupReportScreen": (context) => const GroupReportScreen(),
    "/CashBookScreen": (context) => const CashBookScreen(),
    "/BalanceSheetScreen": (context) => const BalanceSheetScreen(),
    "/ProfitandLossScreen": (context) => const ProfitandLossScreen(),
    "/DayBookScreen": (context) => const DayBookScreen(),
    "/StockReportScreen": (context) => const StockReportScreen(),
    "/SalesReportScreen": (context) => const SalesReportScreen(),
    "/DaySheetScreen": (context) => const DaySheetScreen(),
    "/LedgerTableScreen": (context) => const LedgerTableScreen(),
  };
}
