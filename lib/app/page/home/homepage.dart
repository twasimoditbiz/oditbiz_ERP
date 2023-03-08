import 'dart:developer';

import 'package:drift_db_viewer/drift_db_viewer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oditbiz/app/db/database_helper.dart';
import 'package:oditbiz/app/resources/pref_resources.dart';

import 'package:oditbiz/di/di.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
        onPressed: () async {
          final pre =await SharedPreferences.getInstance();
          log("${pre.getString(PrefResources.TOKENUSER)}");
          final db = getIt<MyDatabase>();
          Get.to(() => DriftDbViewer(db));
        },
      ),
      body: const Center(
        child: Text('home Screen'),
      ),
    );
  }
}
