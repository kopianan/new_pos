import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:pos/application/sale/sale_cubit.dart';

import '../../injectable.dart';

class SaleHistoryDetailPage extends StatefulWidget {
  static String TAG = '/sale-history-detail-page';
  const SaleHistoryDetailPage({Key? key}) : super(key: key);

  @override
  _SaleHistoryDetailPageState createState() => _SaleHistoryDetailPageState();
}

class _SaleHistoryDetailPageState extends State<SaleHistoryDetailPage> {
  String? transNo;
  final cubit = getIt<SaleCubit>();
  @override
  void initState() {
    // transNo = Get.arguments as String;
    cubit.getSaleOrderId("SOM-MDN/2110/1701685");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocProvider(
      create: (context) => cubit,
      child: BlocConsumer<SaleCubit, SaleState>(
        listener: (context, state) {
          print(state);
        },
        builder: (context, state) {
          return Container();
        },
      ),
    ));
  }
}
