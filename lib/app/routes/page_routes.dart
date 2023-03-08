import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart' as transitions_type;
import 'package:oditbiz/app/page/bottom_nav/view/bottom_nav.dart';
import 'package:oditbiz/app/page/home/homepage.dart';
import 'package:oditbiz/app/page/ledger/view/ledger_registration.dart';
import 'package:oditbiz/app/page/ledger/view/ledger_table_screen.dart';
import 'package:oditbiz/app/page/login/view/login_account.dart';
import 'package:oditbiz/app/page/login/view/login_app.dart';
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

final navigationTransition = transitions_type.Transition.fadeIn;
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class Routes {
  static final routes = [
    GetPage(
      name: PageRoutes.bottomNavigationScreen,
      page: () => BottomNavigationScreen(),
      transition: navigationTransition,
    ),
    GetPage(
      name: PageRoutes.login,
      page: () => LoginPage(),
      transition: navigationTransition,
    ),
    GetPage(
      name: PageRoutes.home,
      page: () => Homescreen(),
      transition: navigationTransition,
    ),
    GetPage(
      name: PageRoutes.loginApp,
      page: () => LoginApp(),
      transition: navigationTransition,
    ),
    GetPage(
      name: PageRoutes.ledgerRegistration,
      page: () => LedgerRegistration(),
      transition: navigationTransition,
    ),
    GetPage(
      name: PageRoutes.receiptScreen,
      page: () => ReceiptScreen(),
      transition: navigationTransition,
    ),
    GetPage(
      name: PageRoutes.addSalesOrderScreen,
      page: () => AddSalesOrderScreen(),
      transition: navigationTransition,
    ),
    GetPage(
      name: PageRoutes.addProductScreen,
      page: () => AddProductScreen(),
      transition: navigationTransition,
    ),
    GetPage(
      name: PageRoutes.reciptsSearchScreen,
      page: () => ReciptsSearchScreen(),
      transition: navigationTransition,
    ),
    GetPage(
      name: PageRoutes.paymentSearchScreen,
      page: () => PaymentSearchScreen(),
      transition: navigationTransition,
    ),
    GetPage(
      name: PageRoutes.saleOrderSearchScreen,
      page: () => SaleOrderSearchScreen(),
      transition: navigationTransition,
    ),
    GetPage(
      name: PageRoutes.cartScreen,
      page: () => CartScreen(),
      transition: navigationTransition,
    ),
    GetPage(
      name: PageRoutes.saleOrderDetalisScreen,
      page: () => SaleOrderDetalisScreen(),
      transition: navigationTransition,
    ),
    GetPage(
      name: PageRoutes.groupReportScreen,
      page: () => GroupReportScreen(),
      transition: navigationTransition,
    ),
    GetPage(
      name: PageRoutes.cashBookScreen,
      page: () => CashBookScreen(),
      transition: navigationTransition,
    ),
    GetPage(
      name: PageRoutes.balanceSheetScreen,
      page: () => BalanceSheetScreen(),
      transition: navigationTransition,
    ),
    GetPage(
      name: PageRoutes.profitandLossScreen,
      page: () => ProfitandLossScreen(),
      transition: navigationTransition,
    ),
    GetPage(
      name: PageRoutes.dayBookScreen,
      page: () => DayBookScreen(),
      transition: navigationTransition,
    ),
    GetPage(
      name: PageRoutes.stockReportScreen,
      page: () => StockReportScreen(),
      transition: navigationTransition,
    ),
    GetPage(
      name: PageRoutes.salesReportScreen,
      page: () => SalesReportScreen(),
      transition: navigationTransition,
    ),
    GetPage(
      name: PageRoutes.daySheetScreen,
      page: () => DaySheetScreen(),
      transition: navigationTransition,
    ),
    GetPage(
      name: PageRoutes.ledgerTableScreen,
      page: () => LedgerTableScreen(),
      transition: navigationTransition,
    ),
  ];
}

class PageRoutes {
  static const String bottomNavigationScreen = "/bottomNavigationScreen";
  static const String login = "/login";
  static const String home = '/home';
  static const String loginApp = "/loginApp";
  static const String ledgerRegistration = '/ledgerRegistration';
  static const String receiptScreen = '/receiptScreen';
  static const String paymentScreen = '/paymentScreen';
  static const String addSalesOrderScreen = '/addSalesOrderScreen';
  static const String addProductScreen = '/addProductScreen';
  static const String reciptsSearchScreen = '/reciptsSearchScreen';
  static const String paymentSearchScreen = '/paymentSearchScreen';
  static const String saleOrderSearchScreen = '/saleOrderSearchScreen';
  static const String cartScreen = '/cartScreen';
  static const String saleOrderDetalisScreen = "/saleOrderDetalisScreen";
  static const String groupReportScreen = "/groupReportScreen";
  static const String cashBookScreen = "/cashBookScreen";
  static const String balanceSheetScreen = "/balanceSheetScreen";
  static const String profitandLossScreen = "/profitandLossScreen";
  static const String dayBookScreen = "/DayBookScreen";
  static const String stockReportScreen = "/stockReportScreen";
  static const String salesReportScreen = "/salesReportScreen";
  static const String daySheetScreen = "/daySheetScreen";
  static const String ledgerTableScreen = "/ledgerTableScreen";
}
