import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:pos/application/sale/sale_controller.dart';
import 'package:pos/application/sale/sale_cubit.dart';
import 'package:pos/injectable.dart';

class TransactionProgressPage extends StatefulWidget {
  static const String TAG = '/transaction-progress-page';
  const TransactionProgressPage({Key? key}) : super(key: key);

  @override
  _TransactionProgressPageState createState() =>
      _TransactionProgressPageState();
}

class _TransactionProgressPageState extends State<TransactionProgressPage> {
  final _saleCubit = getIt<SaleCubit>();

  final _saleCon = Get.find<SaleController>();

  @override
  void initState() {
    var _request = _saleCon.convertData();

    _saleCubit.makePayment(_request);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => _saleCubit,
        child: BlocConsumer<SaleCubit, SaleState>(
          listener: (context, state) {
            print(state);
          },
          builder: (context, state) {
            return Container();
          },
        ),
      ),
    );
  }
}
