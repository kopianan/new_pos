import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pos/injectable.dart';
import 'package:pos/presentation/app_widget.dart';

void main() async {
  configureDependencies();
  await GetStorage.init();

  runApp(const AppWidget());
}


