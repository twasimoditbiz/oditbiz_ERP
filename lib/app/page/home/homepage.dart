import 'package:flutter/material.dart';
import 'package:oditbiz/app/db/database_helper.dart';
import 'package:oditbiz/app/di/di.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: Color(0xFF383838),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final db = getIt<MyDatabase>();
        },
      ),
      body: const Center(
        child: Text('home Screen'),
      ),
    );
  }
}
