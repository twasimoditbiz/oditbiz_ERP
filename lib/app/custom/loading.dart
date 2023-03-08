import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LedgerLoader {
  static show(context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Row(
            children: [
              Card(
                elevation: 10,
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: const CircularProgressIndicator(
                  color: Color(0xFF680E2A),
                ),
              ),
              const SizedBox(width: 20),
              const Text("Waiting For Datas...."),
            ],
          ),
        );
      },
    );
  }

  static dismiss() {
    Get.back();
  }
}
