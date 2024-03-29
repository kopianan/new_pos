import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> showDefaultSnackbar(BuildContext context,
    {required String message,
    Duration? duration,
    Color color = Colors.green}) async {
  Get.showSnackbar(
    GetBar(
      snackPosition: SnackPosition.TOP,
      snackStyle: SnackStyle.FLOATING,
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(8),
      borderRadius: 6,
      backgroundColor: color,
      message: message,
      duration: duration ?? const Duration(seconds: 2),
    ),
  );
}
