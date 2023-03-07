
import 'package:get_it/get_it.dart';
import 'package:oditbiz/app/page/bottom_nav/bloc/bottom_cubit.dart';
import 'package:oditbiz/app/page/ledger/bloc/ledger_cubit.dart';
import 'package:oditbiz/app/page/login/bloc/location/location_cubit.dart';


final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<LocationCubit>(LocationCubit());
  getIt.registerSingleton<LedgerCubit>(LedgerCubit());
  getIt.registerSingleton<BottomCubit>(BottomCubit());
   
}
