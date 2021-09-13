import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pos/presentation/auth/auth_page.dart';
import 'package:pos/presentation/menu/menu_page.dart';
import 'package:pos/presentation/splash_screen_page.dart';
import 'package:pos/routes/routes.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'POS',
      getPages: Routes.getPages,
      theme: ThemeData(
        textTheme: GoogleFonts.nunitoTextTheme(),
        primarySwatch: Colors.blue,
      ),
      initialRoute: SplashScreenPage.TAG,
    );
  }
}
