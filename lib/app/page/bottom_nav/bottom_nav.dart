import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oditbiz/app/page/entries/entries_screen.dart';
import 'package:oditbiz/app/page/home/homepage.dart';
import 'package:oditbiz/app/page/profile/profile_screen.dart';
import 'package:oditbiz/app/page/reports/reports_screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  BottomNavigationScreenState createState() => BottomNavigationScreenState();
}

class BottomNavigationScreenState extends State<BottomNavigationScreen> {
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
    setState(() {
      selectedIndex = index;
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[currentIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
        child: Material(
          elevation: 10,
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey[300],
          child: SizedBox(
            height: 70,
            width: double.infinity,
            child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (ctx, i) => GestureDetector(
                onTap: () {
                  selectecdIndexUpdate(i);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 250),
                    width: MediaQuery.of(context).size.width * 0.145,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          i == selectedIndex ? selectedIcon[i] : data[i],
                          size: 35,
                          color: Colors.black,
                        ),
                        Text(
                          items[i],
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: i == selectedIndex
                                ? Colors.black
                                : Colors.grey.shade600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              scrollDirection: Axis.horizontal,
            ),
          ),
        ),
      ),
    );
  }
}


