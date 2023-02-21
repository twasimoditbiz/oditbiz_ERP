import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:oditbiz/app/controller/ledger_report.dart';
import 'package:oditbiz/app/controller/ledger_search.dart';
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
        ChangeNotifierProvider(create: (_)=> LedgerSearchController(_)),
        ChangeNotifierProvider(create: (_)=>LedgerReportController()),
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
      initialRoute: '/login',
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
