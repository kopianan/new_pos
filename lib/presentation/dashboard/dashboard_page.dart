import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/presentation/sale/sale_page.dart';

class DashboardPage extends StatefulWidget {
  static const String TAG = '/dashboard-page';
  const DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListTile(
            title: Text("Sales"),
            onTap: () {
              Get.toNamed(SalePage.TAG);
            },
          )
        ],
      ),
    );
  }
}
