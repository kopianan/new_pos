import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:pos/application/sale/sale_controller.dart';
import 'package:pos/application/sale/sale_cubit.dart';
import 'package:pos/config/constants_data.dart';
import 'package:pos/domain/sale/request_sale_transaction_data_model.dart';
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

    _saleCubit.makePayment(_request, _saleCon.getSaleDataModel);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => _saleCubit,
        child: BlocConsumer<SaleCubit, SaleState>(
          listener: (context, state) {
            state.maybeMap(
              orElse: () {},
              isError: (e) {
                showSnackbar(e.error.trim(), Colors.red);
              },
              isLoading: (e) {},
              onCreateTransactionSuccess: (e) {
                _onCreateTransactionSuccess(context, e.saleData);
              },
              onConfirmPaymentSuccess: (e) {
                showSnackbar("Transaksi Terkonfirmasi Lunas", Colors.green);
              },
            );
          },
          builder: (context, state) {
            return Container();
          },
        ),
      ),
    );
  }

  void _onCreateTransactionSuccess(
      BuildContext, RequestSaleTransactionDataModel data) {
    if (data.pmttype == ConstantsData.getGlobalPaymentType) {
      //confirm payment if payment type is match.
      _saleCubit.confirmPayment(data);
    } else {
      //SUCCESS WITHOUT CONFIRM PAYMENT
      showSnackbar("Berhasil Mengirim Transaksi", Colors.green);
    }
  }

  void showSnackbar(String message, Color background) {
    Get.showSnackbar(GetBar(
      message: message,
      snackStyle: SnackStyle.FLOATING,
      margin: EdgeInsets.all(20),
      snackPosition: SnackPosition.TOP,
      duration: Duration(seconds: 3),
      backgroundColor: background,
    ));
  }
}
