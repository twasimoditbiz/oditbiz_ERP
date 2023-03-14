import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SquareLoader {
  static bool isOpen = false;
  static show(context) {
    isOpen = true;
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.white,
                ),
                width: 86,
                height: 86,
                child: const CircularProgressIndicator(
                  strokeWidth: 2,
                ),
              )
            ],
          );
        });
  }

  static dismiss() {
    if (isOpen) {
      
      isOpen = false;
      Get.back();
    }
  }
}
