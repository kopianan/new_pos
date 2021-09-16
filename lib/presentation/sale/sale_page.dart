import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pos/application/sale/sale_controller.dart';
import 'package:pos/application/sale/sale_cubit.dart';
import 'package:pos/domain/customer_data_model.dart';
import 'package:pos/domain/sale_transaction_data_model.dart';
import 'package:pos/infrastructure/function/custom_data.dart';
import 'package:pos/infrastructure/function/custom_date.dart';
import 'package:pos/infrastructure/function/custom_snackbar.dart';
import 'package:pos/infrastructure/storage/storage.dart';
import 'package:pos/presentation/sale/add_item_page.dart';
import 'package:pos/presentation/sale/choose_customer_page.dart';
import 'package:pos/presentation/sale/widget/product_cart_item.dart';
import 'package:pos/presentation/widgets/widget_collection.dart';

import '../../injectable.dart';
import 'widget/product_list_item.dart';

class SalePage extends StatefulWidget {
  static const String TAG = '/sale-page';
  const SalePage({Key? key}) : super(key: key);

  @override
  _SalePageState createState() => _SalePageState();
}

class _SalePageState extends State<SalePage> {
  final saleCubit = getIt<SaleCubit>();
  final _saleController = Get.find<SaleController>();

  CustomData _customData = CustomData();
  PrefStorage _box = PrefStorage();

  @override
  void initState() {
    _loadProductList();

    super.initState();
  }

  void _loadProductList() {
    var _list = _box.loadProductList();
    _saleController.setProductList(_list);
  }

  Future<void> saveTransactionData() async {
    var _transaction = SaleTransactionDataModel(
        date: CustomDate.getNowDate(),
        selectedCustomer: _saleController.getSelectedCustomer,
        selectedLocation: _saleController.getSelectedLocation,
        transactionNumber: _saleController.getTransactionNumber,
        listProduct: _saleController.getCartList,
        total: _saleController.calculateGrandTotal());
    var _savedList = _box.getSavedTransactionDarta();

    //check the data if there is duplicate just update
    try {
      var _duplicate = _savedList.firstWhere((element) =>
          element.transactionNumber == _transaction.transactionNumber);
      //remove duplicate
      _savedList.removeWhere((element) =>
          element.transactionNumber == _duplicate.transactionNumber);

      //Saving
      _savedList.add(_transaction);
      _box.saveTransactionData(_savedList);
    } catch (e) {
      //no duplicate data
      //just add as new data
      _savedList.add(_transaction);
      _box.saveTransactionData(_savedList);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Sale"),
      //   actions: [
      //     IconButton(
      //       tooltip: "Sinkron Data",
      //       onPressed: () {
      //         saleCubit.getAllProduct();
      //       },
      //       icon: const Icon(Icons.refresh),
      //     )
      //   ],
      // ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: CustomScrollView(
                slivers: [
                  SliverAppBar(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    foregroundColor: Colors.blueGrey,
                    title: Text("Buat Pesanan"),
                    centerTitle: true,
                    floating: true,
                  ),
                  SliverToBoxAdapter(
                      child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: informationSection(),
                  )),
                  SliverToBoxAdapter(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 20,
                            bottom: 8,
                            right: 15,
                            left: 15,
                          ),
                          child: SectionTitle(
                            title: "Transaction Detail",
                            textButton: "Tambah",
                            onTap: () {
                              Get.toNamed(AddItemPage.TAG);
                            },
                          ),
                        ),
                        Divider(
                          thickness: 1,
                        )
                      ],
                    ),
                  ),
                  Obx(
                    () => SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          var _list = _saleController.getCartList;

                          return ProductCartItem(
                            onDelete: () {
                              _saleController.removeItemFromCart(_list[index]);
                            },
                            item: _list[index],
                            onAdd: () {
                              _saleController.addBuyQty(_list[index]).fold(
                                (l) {
                                  Get.showSnackbar(
                                    GetBar(
                                      message: l,
                                      duration: Duration(seconds: 1),
                                    ),
                                  );
                                },
                                (r) => print("Sukses"),
                              );
                            },
                            onDecrease: () {
                              _saleController.decreaseBuyQty(_list[index]).fold(
                                (l) {
                                  Get.showSnackbar(
                                    GetBar(
                                      message: l,
                                      duration: Duration(seconds: 1),
                                    ),
                                  );
                                },
                                (r) => print("Sukses"),
                              );
                            },
                          );
                        },
                        childCount: _saleController.getCartList.length,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    offset: Offset(-1, -2),
                    blurRadius: 2,
                    spreadRadius: 2)
              ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Grand Total",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Obx(
                          () => Text(
                            _saleController.calculateGrandTotal().toString(),
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: MaterialButton(
                          height: 45,
                          elevation: 5,
                          shape: OutlineInputBorder(
                              borderSide: BorderSide(
                            width: 2,
                            color: Colors.indigoAccent[400]!,
                          )),
                          child: Text(
                            "Simpan",
                            style: TextStyle(
                              color: Colors.indigoAccent[400]!,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onPressed: () async {
                            try {
                              await saveTransactionData();
                              showDefaultSnackbar(context,
                                  message: "Berhasil menyimpan data",
                                  duration: Duration(seconds: 3));
                            } catch (e) {
                              showDefaultSnackbar(
                                context,
                                message: e.toString(),
                                duration: Duration(seconds: 3),
                              );
                            }
                          },
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        flex: 3,
                        child: MaterialButton(
                          height: 45,
                          elevation: 5,
                          color: Colors.indigoAccent[400],
                          child: Text(
                            "Lanjutkan",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onPressed: () {
                            print(_box.getSavedTransactionDarta());
                          },
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    alignment: Alignment.center,
                    child: InkWell(
                      child: Text(
                        "Hapus Record",
                        style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column informationSection() {
    return Column(
      children: [
        const SectionTitle(title: "Transaction Info"),
        Card(
          elevation: 5,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          margin: EdgeInsets.zero,
          child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TransactionInfoDetail(
                    title: "Nomor Transaksi",
                    value: _saleController.getTransactionNumber,
                  ),
                  TransactionInfoDetail(
                    title: "Kode Lokasi",
                    value: _saleController.getSelectedLocation.locationCode!,
                  ),
                  TransactionInfoDetail(
                    title: "Tanggal",
                    value: CustomDate.convertDate(
                        _saleController.getTransactionDate),
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
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            )),
                        Text(":  ",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold)),
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
                                      child: (_saleController
                                                  .getSelectedCustomer ==
                                              CustomerDataModel())
                                          ? Text(
                                              "Pilih Customer / Tap Disini",
                                              overflow: TextOverflow.clip,
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.red,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          : Text(
                                              _saleController
                                                  .getSelectedCustomer
                                                  .customerName!,
                                              overflow: TextOverflow.clip,
                                              style: TextStyle(
                                                  fontSize: 14,
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
