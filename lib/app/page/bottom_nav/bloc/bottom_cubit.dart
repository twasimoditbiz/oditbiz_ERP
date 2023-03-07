import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oditbiz/app/page/entries/entries_screen.dart';
import 'package:oditbiz/app/page/home/homepage.dart';
import 'package:oditbiz/app/page/profile/profile_screen.dart';
import 'package:oditbiz/app/page/reports/reports_screen.dart';
part 'bottom_state.dart';

class BottomCubit extends Cubit<BottomState> {
  BottomCubit() : super(BottomInitial());

  int selectedIndex = 0;
  int currentIndex = 0;
  List<IconData> data = [
    Icons.home_outlined,
    Icons.add_box_outlined,
    CupertinoIcons.chart_bar_square,
    Icons.person_outline_rounded,
  ];

  List<IconData> selectedIcon = [
    Icons.home,
    Icons.add_box_rounded,
    CupertinoIcons.chart_bar_square_fill,
    Icons.person,
  ];
  List<String> items = [
    "Home",
    "Entries",
    "Reports",
    "Profile",
  ];

  List<Widget> page = [
    const Homescreen(),
    const EntriesScreen(),
    const ReportScreen(),
    const ProfileScreen(),
  ];

  selectecdIndexUpdate(int index) {
    emit(BottomInitial());
    selectedIndex = index;
    currentIndex = index;
    emit(BottomLoaded());
  }
}
