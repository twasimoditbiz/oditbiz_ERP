import 'package:flutter/material.dart';
import 'package:oditbiz/app/controller/bottom_controller.dart';
import 'package:provider/provider.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  BottomNavigationScreenState createState() => BottomNavigationScreenState();
}

class BottomNavigationScreenState extends State<BottomNavigationScreen> {
  @override
  Widget build(BuildContext context) {
    final watchController = context.watch<BottomNavigationController>();
    final readController = context.read<BottomNavigationController>();
    return Scaffold(
      body: watchController.page[watchController.currentIndex],
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
              itemCount: watchController.data.length,
              itemBuilder: (ctx, i) => GestureDetector(
                onTap: () {
                  readController.selectecdIndexUpdate(i);
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
                          i == watchController.selectedIndex
                              ? watchController.selectedIcon[i]
                              : watchController.data[i],
                          size: 35,
                          color: Colors.black,
                        ),
                        Text(
                          watchController.items[i],
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: i == watchController.selectedIndex
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
