import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:pos/application/sale/sale_controller.dart';
import 'package:pos/application/sale/sale_cubit.dart';
import 'package:pos/config/constants_data.dart';
import 'package:pos/domain/sale/request_sale_transaction_data_model.dart';
import 'package:pos/infrastructure/storage/storage.dart';
import 'package:pos/injectable.dart';
import 'package:pos/presentation/dashboard/dashboard_page.dart';

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
    print(_request);
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
                _onCreateTransactionSuccess(context, e.message);
                showSnackbar("Transaksi Bershsil Dibuat", Colors.green);

                _saleCon.saveTransactionData(describeEnum(TransStatus.SEND));
              },
              onConfirmPaymentSuccess: (e) {
                showSnackbar("Transaksi Terkonfirmasi Lunas", Colors.green);
                _saleCon.saveTransactionData(describeEnum(TransStatus.SEND));
              },
            );
          },
          builder: (context, state) {
            return SafeArea(
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 20),
                child: state.maybeMap(
                  isError: (e) {
                    return ErrorPage(
                      message: e.error,
                    );
                  },
                  orElse: () {
                    return WaitingPage();
                  },
                  isLoading: (e) {
                    return WaitingPage();
                  },
                  onConfirmPaymentSuccess: (e) {
                    return SuccessPage(
                      message: e.saleData,
                    );
                  },
                  onCreateTransactionSuccess: (e) {
                    return SuccessPage(
                      message: "Pemesanan Dibuat",
                    );
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  void _onCreateTransactionSuccess(BuildContext, String message) {
    var _pmtType = _saleCon.getPaymentType.paymentTypeId;
    var _transNumber = _saleCon.getTransactionNumber;
//check if cash

    try {
      var _paymentType = PrefStorage()
          .loadPaymentType()
          .firstWhere((element) => element.paymentTypeId == _pmtType);
      print(_paymentType);
      if (_paymentType.paymentTypeCode!.toLowerCase() == "csh") {
        _saleCubit.confirmPayment(_transNumber);
      }
    } catch (e) {}
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

class WaitingPage extends StatelessWidget {
  const WaitingPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          Icons.timelapse_sharp,
          size: 100,
          color: Colors.amber,
        ),
        SizedBox(height: 20),
        Text(
          "Payment On Prgoress",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 100),
        CircularProgressIndicator.adaptive(),
        Spacer(),
        Text("Pelase waiting a second."),
        SizedBox(height: 20),
      ],
    );
  }
}

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key, this.message}) : super(key: key);
  final String? message;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.error_outline,
            size: 100,
            color: Colors.red,
          ),
          SizedBox(height: 20),
          Text(
            "Payment Failed",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 100),
          Text(
            message!,
            textAlign: TextAlign.center,
          ),
          Spacer(),
          ElevatedButton(
              onPressed: () {
                Get.back(closeOverlays: true);
              },
              child: Text("Kembali")),
          Text("Terjadi kesalahan"),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

class SuccessPage extends StatelessWidget {
  const SuccessPage({Key? key, required this.message}) : super(key: key);
  final String message;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          Icons.check_circle_outlined,
          size: 100,
          color: Colors.green,
        ),
        SizedBox(height: 20),
        Text(
          "Pembayaran Berhasil",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Spacer(),
        ElevatedButton(
          onPressed: () {
            Get.offNamedUntil(
                DashboardPage.TAG, ModalRoute.withName(DashboardPage.TAG));
          },
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "KEMBALI",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SizedBox(height: 100),
        Text(message),
        SizedBox(height: 20),
      ],
    );
  }
}
