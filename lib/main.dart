import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:oditbiz/app/controller/ledger_search.dart';
import 'package:oditbiz/app/controller/login_page.dart';
import 'package:oditbiz/app/custom/textshadow.dart';
import 'package:oditbiz/app/page/bottom_nav/bloc/bottom_cubit.dart';
import 'package:oditbiz/app/page/group/bloc/group_rearch/group_cubit.dart';
import 'package:oditbiz/app/page/group/bloc/group_report/group_report_cubit.dart';
import 'package:oditbiz/app/page/group/bloc/route/route_cubit.dart';
import 'package:oditbiz/app/page/group/bloc/salesman/salesman_cubit.dart';
import 'package:oditbiz/app/page/ledger/bloc/ledger_cubit.dart';
import 'package:oditbiz/app/page/ledger/bloc/ledger_rearch/ledger_search_cubit.dart';
import 'package:oditbiz/app/page/login/bloc/app_login/app_login_cubit.dart';
import 'package:oditbiz/app/page/login/bloc/import/import_cubit.dart';
import 'package:oditbiz/app/page/login/bloc/location/location_cubit.dart';
import 'package:oditbiz/app/page/login/bloc/user_login/user_login_cubit.dart';
import 'package:oditbiz/app/routes/page_routes.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'di/di.dart' as di;

void main() {
  di.setup();
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

  runApp(Sizer(
    builder: (context, orientation, deviceType) {
      return MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (_) => LedgerSearchController(_)),
            ChangeNotifierProvider(create: (_) => LoginPageController()),
          ],
          child: MultiBlocProvider(
            providers: [
              BlocProvider.value(value: di.getIt.get<LocationCubit>()),
              BlocProvider.value(value: di.getIt.get<LedgerCubit>()),
              BlocProvider.value(value: di.getIt.get<BottomCubit>()),
              BlocProvider.value(value: di.getIt.get<ImportCubit>()),
              BlocProvider.value(value: di.getIt.get<AppLoginCubit>()),
              BlocProvider.value(value: di.getIt.get<UserLoginCubit>()),
              BlocProvider.value(value: di.getIt.get<LedgerSearchCubit>()),
              BlocProvider.value(value: di.getIt.get<GroupCubit>()),
              BlocProvider.value(value: di.getIt.get<RouteCubit>()),
              BlocProvider.value(value: di.getIt.get<SalesManCubit>()),
              BlocProvider.value(value: di.getIt.get<GroupReportCubit>()),

              
            ],
            child: const MyApp(),
          ));
    },
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: PageRoutes.splashScreen,
      getPages: Routes.routes,
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
