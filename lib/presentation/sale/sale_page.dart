import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:pos/application/sale/sale_controller.dart';
import 'package:pos/application/sale/sale_cubit.dart';
import 'package:pos/config/constants_data.dart';
import 'package:pos/domain/customer_data_model.dart';
import 'package:pos/domain/payment_term.dart';
import 'package:pos/infrastructure/function/custom_data.dart';
import 'package:pos/infrastructure/function/custom_date.dart';
import 'package:pos/infrastructure/function/custom_snackbar.dart';
import 'package:pos/infrastructure/function/global_function.dart';
import 'package:pos/infrastructure/storage/storage.dart';
import 'package:pos/presentation/progress/transaction_progress_page.dart';
import 'package:pos/presentation/sale/add_item_page.dart';
import 'package:pos/presentation/sale/choose_customer_page.dart';
import 'package:pos/presentation/sale/widget/product_cart_item.dart';
import 'package:pos/presentation/widgets/widget_collection.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../injectable.dart';

class SalePage extends StatefulWidget {
  static const String TAG = '/sale-page';
  const SalePage({Key? key}) : super(key: key);

  @override
  _SalePageState createState() => _SalePageState();
}

class _SalePageState extends State<SalePage> {
  final _saleController = Get.find<SaleController>();

  CustomData _customData = CustomData();
  PrefStorage _box = PrefStorage();

  @override
  void initState() {
    _saleBloc.getAllProduct();
    super.initState();
  }

  void _loadProductList() {
    var _list = _box.loadProductList();
    _saleController.setProductList(_list);
  }

  final _saleBloc = getIt<SaleCubit>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocProvider(
          create: (context) => _saleBloc,
          child: BlocConsumer<SaleCubit, SaleState>(
            listener: (context, state) {
              state.maybeMap(
                  orElse: () {},
                  isLoadingDiscount: (e) {
                    Get.showSnackbar(
                      GetBar(
                        message: "Cek diskon user",
                        showProgressIndicator: true,
                      ),
                    );
                  },
                  onGetCustomerDiscount: (e) {
                    Get.back();
                    _saleController.setCustomerDiscountList(e.list);
                  },
                  isError: (e) {
                    Get.back();
                  },
                  onGetAllProducts: (e) {
                    print("GET ALL PRODUCTS");
                    _loadProductList();
                  },
                  onGetCustomer: (e) {
                    print("GET ALL CUSTOMER");
                  });
            },
            builder: (context, state) {
              return state.maybeMap(
                isLoading: (e) {
                  return loadingComponent(context);
                },
                orElse: () {
                  return defaultComponent(context);
                },
              );
            },
          ),
        ),
      ),
    );
  }

  Widget loadingComponent(BuildContext context) {
    return Center(
      child: CircularProgressIndicator.adaptive(),
    );
  }

  Column defaultComponent(BuildContext context) {
    return Column(
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
                actions: [
                  IconButton(
                    onPressed: () {
                      _saleBloc.getAllProduct(); 
                    },
                    icon: Icon(Icons.refresh),
                  )
                ],
              ),
              SliverToBoxAdapter(
                  child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: informationSection(),
              )),
              SliverToBoxAdapter(child: Divider(thickness: 1)),
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 10,
                        bottom: 8,
                        right: 15,
                        left: 15,
                      ),
                      child: SectionTitle(
                        title: "Transaction Detail",
                        textButton: (_saleController.getSetStatus !=
                                describeEnum(TransStatus.PROCCESS))
                            ? null
                            : "Tambah",
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
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Subtotal",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Obx(
                    () => Text(
                      convertNumber(_saleController.calculateSubTotal()),
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total Discount",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Obx(
                    () => Text(
                      "- " +
                          convertNumber(
                              _saleController.calculateDiscountGrandTotal()),
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  )
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Grand Total",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Obx(() => Text(
                        convertNumber(_saleController.calculateFinalTotal()),
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ))
                ],
              ),
              SizedBox(height: 10),
              (_saleController.getSetStatus !=
                      describeEnum(TransStatus.PROCCESS))
                  ? Row(
                      children: [
                        PrintIcon(
                          icon: Icons.print_sharp,
                          onPressed: () {
                            try {
                              launch(ConstantsData.getPrintInvoiceUrl(
                                  _saleController.getTransactionNumber));
                            } catch (e) {}
                          },
                        ),
                        SizedBox(width: 10),
                        PrintIcon(
                          icon: Icons.print_outlined,
                          onPressed: () {
                            try {
                              launch(ConstantsData.getPdfPrint(
                                  _saleController.getTransactionNumber));
                            } catch (e) {}
                          },
                        ),
                        SizedBox(width: 10),
                        PrintIcon(
                          icon: Icons.share,
                          onPressed: () {
                            try {
                              String pdf = ConstantsData.getPdfDownload(
                                  _saleController.getTransactionNumber);

                              launch(pdf);
                            } catch (e) {}
                          },
                        ),
                      ],
                    )
                  : SizedBox(),
              SizedBox(height: 10),
              (_saleController.getSetStatus ==
                          describeEnum(TransStatus.CANCEL) ||
                      (_saleController.getSetStatus ==
                          describeEnum(TransStatus.SEND)))
                  ? SizedBox()
                  : Column(
                      children: [
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
                                    //simpan ke local
                                    await _saleController.saveTransactionData(
                                        describeEnum(TransStatus.PENDING));
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
                                  Get.toNamed(TransactionProgressPage.TAG);
                                },
                              ),
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          alignment: Alignment.center,
                          child: InkWell(
                            onTap: () async {
                              try {
                                //simpan ke local dengan status cancel
                                await _saleController.saveTransactionData(
                                    describeEnum(TransStatus.SEND));
                                Get.back(closeOverlays: true);
                              } catch (e) {
                                showDefaultSnackbar(context,
                                    message: "Gagal menghapus record");
                              }
                            },
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
            ],
          ),
        ),
      ],
    );
  }

  Column informationSection() {
    return Column(
      children: [
        const SectionTitle(title: "Transaction Info"),
        Container(
            margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
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
                Obx(() => TransactionInfoDetail(
                      title: "Payment Term",
                      value: (_saleController.getPaymentTerm == PaymentTerm())
                          ? "Pilih Customer"
                          : _saleController.getPaymentTerm.name!,
                    )),
                Obx(
                  () => TransactionInfoDetail(
                    title: "PaymentType",
                    value: (_saleController.getPaymentType == PaymentTerm())
                        ? "Pilih Customer"
                        : _saleController.getPaymentType.name!,
                  ),
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
                                fontSize: 14, fontWeight: FontWeight.w500),
                          )),
                      Text(":  ",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold)),
                      Expanded(
                          flex: 3,
                          child: InkWell(
                            onTap: (_saleController.getSetStatus !=
                                    describeEnum(TransStatus.PROCCESS))
                                ? null
                                : () async {
                                    var _selectedUser = await Get.toNamed(
                                        ChooseCustomerPage.TAG);

                                    _saleBloc
                                        .getCustomerDiscount(_selectedUser);
                                  },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                            _saleController.getSelectedCustomer
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
      ],
    );
  }
}

class PrintIcon extends StatelessWidget {
  const PrintIcon({
    Key? key,
    required this.onPressed,
    required this.icon,
  });

  final Function onPressed;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(border: Border.all(color: Colors.black)),
      padding: EdgeInsets.all(8),
      child: IconButton(
        onPressed: () {
          onPressed();
        },
        icon: Icon(icon, size: 35),
      ),
    );
  }
}
