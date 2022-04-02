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
  TextEditingController _remark = TextEditingController();

  CustomData _customData = CustomData();
  PrefStorage _box = PrefStorage();

  @override
  void initState() {
    checkStatus();
    _remark.clear();
    super.initState();
  }

  void checkStatus() {
    if (_saleController.getSetStatus == describeEnum(TransStatus.CANCEL)) {
    } else if (_saleController.getSetStatus == describeEnum(TransStatus.SEND)) {
      // get sales id
      _saleBloc.getSaleOrderId(_saleController.getTransactionNumber);
    } else {
      _saleBloc.getAllProduct();
    }
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
                  onGetSaleDetail: (detail) {
                    //sale detail
                    print(detail);
                  },
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator.adaptive(),
          SizedBox(height: 20),
          Text(
            "Update Data",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )
        ],
      ),
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
                                    describeEnum(TransStatus.PROCCESS) &&
                                _saleController.getSetStatus !=
                                    describeEnum(TransStatus.PENDING))
                            ? null
                            : "Tambah",
                        onTap: () {
                          if (_saleController.getSelectedCustomer ==
                              CustomerDataModel()) {
                            Get.showSnackbar(
                              GetBar(
                                message: "Pilih customer terlebih dahulu",
                                duration: Duration(seconds: 2),
                              ),
                            );
                          } else {
                            Get.toNamed(AddItemPage.TAG);
                          }
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
                    "Remark",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  IconButton(
                      onPressed: () {
                        _remark.text = _saleController.getRemark;
                        showDialog(
                          context: context,
                          builder: (context) {
                            return Dialog(
                              insetPadding:
                                  EdgeInsets.symmetric(horizontal: 20),
                              child: Container(
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      TextFormField(
                                        textAlignVertical:
                                            TextAlignVertical.top,
                                        controller: _remark,
                                        minLines: 4,
                                        maxLines: 4,
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                          label: Text("Remark"),
                                          border: OutlineInputBorder(),
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Container(
                                        height: 45,
                                        width: double.infinity,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            _saleController
                                                .setRemark(_remark.text);
                                            Get.back();
                                          },
                                          child: Text(
                                            "Confirm",
                                            style: TextStyle(fontSize: 15),
                                          ),
                                        ),
                                      )
                                    ],
                                  )),
                            );
                          },
                        );
                      },
                      icon: Icon(Icons.edit))
                ],
              ),
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
                  Obx(
                    () => Text(
                      convertNumber(_saleController.calculateFinalTotal()),
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 10),
              (_saleController.getSetStatus == describeEnum(TransStatus.SEND))
                  ? BlocBuilder<SaleCubit, SaleState>(
                      builder: (context, state) {
                        return state.maybeMap(
                          orElse: () {
                            return Container();
                          },
                          onGetSaleDetail: (e) {
                            return Row(
                              children: [
                                PrintIcon(
                                  icon: Icons.print_sharp,
                                  onPressed: () {
                                    try {
                                      launch(ConstantsData()
                                          .getPrintInvoiceUrl(e.id));
                                    } catch (e) {}
                                  },
                                ),
                                SizedBox(width: 10),
                                PrintIcon(
                                  icon: Icons.print_outlined,
                                  onPressed: () {
                                    try {
                                      launch(ConstantsData().getPdfPrint(e.id));
                                    } catch (e) {}
                                  },
                                ),
                                SizedBox(width: 10),
                                PrintIcon(
                                  icon: Icons.share,
                                  onPressed: () {
                                    try {
                                      String pdf =
                                          ConstantsData().getPdfDownload(e.id);

                                      launch(pdf);
                                    } catch (e) {}
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      },
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
                                  color: Colors.red[400]!,
                                )),
                                child: Text(
                                  "Hapus ",
                                  style: TextStyle(
                                    color: Colors.red[400]!,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                onPressed: () async {
                                  try {
                                    //simpan ke local dengan status cancel
                                    await _saleController.saveTransactionData(
                                        describeEnum(TransStatus.CANCEL));
                                    Get.back(closeOverlays: true);
                                  } catch (e) {
                                    showDefaultSnackbar(context,
                                        message: "Gagal menghapus record");
                                  }
                                },
                              ),
                            ),
                            SizedBox(width: 10),
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
                                onPressed: () async {
                                  //Check customer and data

                                  if (_saleController.getSelectedCustomer !=
                                          CustomerDataModel() &&
                                      _saleController.getCartList.length > 0) {
                                    Get.dialog(AlertDialog(
                                      title: Text("Peringatan !!!"),
                                      content: Text(
                                          "Anda yakin ingin melanjutkan pemesanan ? "),
                                      actions: [
                                        TextButton(
                                          onPressed: () async {
                                            Get.back();

                                            Get.toNamed(
                                                TransactionProgressPage.TAG);
                                          },
                                          child: Text(
                                            "OK",
                                            style:
                                                TextStyle(color: Colors.blue),
                                          ),
                                        ),
                                        TextButton(
                                          onPressed: () {
                                            Get.back();
                                          },
                                          child: Text(
                                            "Batal",
                                            style: TextStyle(color: Colors.red),
                                          ),
                                        )
                                      ],
                                    ));
                                  } else {
                                    showDefaultSnackbar(context,
                                        message:
                                            "Silahkan isi data customer dan produk",
                                        color: Colors.red);
                                  }
                                },
                              ),
                            ),
                          ],
                        ),
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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SectionTitle(
              title: "Transaction Info",
            ),
            Text(CustomDate.convertDate(_saleController.getTransactionDate))
          ],
        ),
        Container(
            margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TransactionInfoDetail(
                  title: "Nomor Transaksi",
                  value: _saleController.getTransactionNumber,
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Obx(
                              () => Expanded(
                                child: (_saleController.getSelectedCustomer ==
                                        CustomerDataModel())
                                    ? InkWell(
                                        onTap: (_saleController.getSetStatus !=
                                                describeEnum(
                                                    TransStatus.PROCCESS))
                                            ? null
                                            : () async {
                                                await chooseCustomer();
                                              },
                                        child: Text(
                                          "Pilih Customer / Tap Disini",
                                          overflow: TextOverflow.clip,
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.red,
                                              fontWeight: FontWeight.bold),
                                        ))
                                    : InkWell(
                                        onTap: () {
                                          changePaymentTypeAndTerm();
                                        },
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              _saleController
                                                  .getSelectedCustomer
                                                  .customerName!,
                                              overflow: TextOverflow.clip,
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  (_saleController
                                                              .getPaymentTerm ==
                                                          PaymentTerm())
                                                      ? "Pilih Customer"
                                                      : _saleController
                                                          .getPaymentTerm
                                                          .paymentTermCode!,
                                                ),
                                                Text(" / "),
                                                Text(
                                                  (_saleController
                                                              .getPaymentType ==
                                                          PaymentTerm())
                                                      ? "Pilih Customer"
                                                      : _saleController
                                                          .getPaymentType
                                                          .paymentTypeCode!,
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                              ),
                            ),
                            Icon(Icons.find_in_page_outlined, size: 30)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )),
      ],
    );
  }

  Future<void> chooseCustomer() async {
    if (_saleController.getSelectedCustomer != CustomerDataModel()) {
      Get.dialog(
        AlertDialog(
          title: Text("Peringatan !!!"),
          content: Text("Mengganti customer akan menghapus data sebelumnya "),
          actions: [
            TextButton(
              onPressed: () async {
                Get.back();
                //Remove all data Product

                _saleController.setCartList([]);
                _saleController.setCustomerDiscountList([]);
                _saleController.setSelectedCustomer(CustomerDataModel());
                _saleController.setSelectedList([]);
                var _selectedUser = await Get.toNamed(ChooseCustomerPage.TAG);

                _saleBloc.getCustomerDiscount(_selectedUser);
              },
              child: Text(
                "OK",
                style: TextStyle(color: Colors.blue),
              ),
            ),
            TextButton(
              onPressed: () {
                Get.back();
              },
              child: Text(
                "Batal",
                style: TextStyle(color: Colors.red),
              ),
            )
          ],
        ),
      );
    } else {
      var _selectedUser = await Get.toNamed(ChooseCustomerPage.TAG);

      _saleBloc.getCustomerDiscount(_selectedUser);
    }
  }

  void changePaymentTypeAndTerm() {
    showDialog(
      context: context,
      builder: (context) {
        return GetX<SaleController>(
          builder: (controller) => AlertDialog(
              actions: [
                TextButton(
                  onPressed: () {
                    Get.back(); 
                  },
                  child: Text("Simpan"),
                ),
              ],
              title: Text("Ganti Payment Term dan Payment Type"),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  RadioListTile<String>(
                    title: Text("Cash"),
                    value: "cash",
                    groupValue: controller.getCustompayment,
                    onChanged: (e) {
                      controller.setCustomPayment(e!);
                      controller.setPaymentTerm(ConstantsData.cashPaymentTerm);
                      controller.setPaymentType(ConstantsData.cashPaymentType);
                    },
                  ),
                  RadioListTile<String>(
                    title: Text("Credit"),
                    value: "credit",
                    groupValue: controller.getCustompayment,
                    onChanged: (e) {
                      controller.setCustomPayment(e!);
                      controller
                          .setPaymentTerm(ConstantsData.creditPaymentTerm);
                      controller
                          .setPaymentType(ConstantsData.creditPaymentType);
                    },
                  ),
                ],
              )),
        );
      },
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
