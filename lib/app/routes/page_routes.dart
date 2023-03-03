import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart'
    as transitions_type;
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

final navigationTransition = transitions_type.Transition.fadeIn;
final GlobalKey<NavigatorState> navigatorKey = new GlobalKey<NavigatorState>();

class Routes {
  static final routes = [
    GetPage(
      name: PageRoutes.bottomNavigationScreen,
      page: () => const BottomNavigationScreen(),
      transition: navigationTransition,
    ),
    GetPage(
      name: PageRoutes.login,
      page: () =>  LoginPage(),
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
  static const String addSalesOrderScreen = '/AddSalesOrderScreen';
  static const String addProductScreen = '/AddProductScreen';
  static const String reciptsSearchScreen = '/ReciptsSearchScreen';
  static const String paymentSearchScreen = '/PaymentSearchScreen';
  static const String saleOrderSearchScreen = '/SaleOrderSearchScreen';
  static const String cartScreen = '/CartScreen';
  static const String saleOrderDetalisScreen = "/SaleOrderDetalisScreen";
  static const String groupReportScreen = "/GroupReportScreen";
  static const String cashBookScreen = "/CashBookScreen";
  static const String balanceSheetScreen = "/BalanceSheetScreen";
  static const String profitandLossScreen = "/ProfitandLossScreen";
  static const String dayBookScreen = "/DayBookScreen";
  static const String stockReportScreen = "/stockReportScreen";
  static const String salesReportScreen = "/salesReportScreen";
  static const String daySheetScreen = "/daySheetScreen";
  static const String ledgerTableScreen = "/ledgerTableScreen";
}
