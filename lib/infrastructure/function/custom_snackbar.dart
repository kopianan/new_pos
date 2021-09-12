import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

Future<void> showDefaultSnackbar(
  BuildContext context, {
  required String message,
  Duration? duration,
}) async {
  Get.showSnackbar(
    GetBar(
      message: message,
      duration: duration ?? const Duration(seconds: 3),
    ),
  );
}
