import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:pos/application/sale/sale_controller.dart';
import 'package:pos/application/sale/sale_cubit.dart';
import 'package:pos/domain/customer_data_model.dart';
import 'package:pos/infrastructure/function/custom_date.dart';
import 'package:pos/infrastructure/storage/storage.dart';
import 'package:pos/presentation/sale/choose_customer_page.dart';
import 'package:pos/presentation/widgets/widget_collection.dart';

import '../../injectable.dart';

class SalePage extends StatefulWidget {
  static const String TAG = '/sale-page';
  const SalePage({Key? key}) : super(key: key);

  @override
  _SalePageState createState() => _SalePageState();
}

class _SalePageState extends State<SalePage> {
  final saleCubit = getIt<SaleCubit>();
  final _saleController = Get.find<SaleController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sale"),
        actions: [
          IconButton(
            tooltip: "Sinkron Data",
            onPressed: () {
              saleCubit.getAllProduct();
            },
            icon: const Icon(Icons.refresh),
          )
        ],
      ),
      body: BlocProvider(
        create: (context) => saleCubit,
        child: BlocConsumer<SaleCubit, SaleState>(
          listener: (context, state) {
            state.maybeMap(
              orElse: () {
                Get.back();
              },
              onGetAllProducts: (val) {},
              isLoading: (e) {
                Get.dialog(
                  SimpleDialog(
                    title: const Text("Mendownload Data"),
                    children: [
                      const Center(child: CircularProgressIndicator()),
                      const SizedBox(height: 20),
                      TextButton(
                          onPressed: () {
                            Get.back();
                          },
                          child: const Text("Batalkan"))
                    ],
                  ),
                );
              },
            );
          },
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                informationSection(),
                Column(
                  children: [
                    const SectionTitle(title: "Transaction Detail"),
                  ],
                )
              ],
            );
          },
        ),
      ),
    );
  }

  String generateTransactionId() {
    var _user = PrefStorage().getUserLogin();

    var _transType = PrefStorage().getTransactionType();
    var _location = _user.locationCode;
    var _uniqueCode = _user.employeeId!.substring(_user.employeeId!.length - 3);
    String monthYear = CustomDate.getMonthYear();
    String dateOnly = CustomDate.getDateOnly();

    String fullId =
        "${_transType}M-${_location}/${monthYear}/${dateOnly}001";
    return fullId;
  }

  Column informationSection() {
    return Column(
      children: [
        const SectionTitle(title: "Transaction Info"),
        Card(
          margin: EdgeInsets.zero,
          child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TransactionInfoDetail(
                    title: "Nomor Transaksi",
                    value: generateTransactionId(),
                  ),
                  TransactionInfoDetail(
                    title: "Kode Lokasi",
                    value: PrefStorage().getUserLogin().locationCode!,
                  ),
                  TransactionInfoDetail(
                    title: "Tanggal",
                    value: CustomDate.getNowDate(),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            flex: 2,
                            child: Text(
                              "Nama Customer",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            )),
                        Text(":  ",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                        Expanded(
                            flex: 3,
                            child: InkWell(
                              onTap: () {
                                Get.toNamed(ChooseCustomerPage.TAG);
                              },
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Obx(
                                    () => Expanded(
                                      child: Text(
                                        (_saleController.getSelectedCustomer ==
                                                CustomerDataModel())
                                            ? ""
                                            : _saleController
                                                .getSelectedCustomer
                                                .customerName!,
                                        overflow: TextOverflow.clip,
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  Icon(Icons.find_in_page_outlined, size: 30)
                                ],
                              ),
                            )),
                      ],
                    ),
                  ),
                ],
              )),
        ),
      ],
    );
  }
}
