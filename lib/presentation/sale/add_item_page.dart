import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:pos/application/sale/sale_controller.dart';
import 'package:pos/domain/product_data_model.dart';
import 'package:collection/collection.dart';
import 'package:pos/infrastructure/function/custom_snackbar.dart';
import 'package:pos/presentation/scan/qr_scan_page.dart';

import 'widget/product_cart_item.dart';
import 'widget/product_list_item.dart';

class AddItemPage extends StatefulWidget {
  static const String TAG = '/add-item-page';
  const AddItemPage({Key? key}) : super(key: key);

  @override
  _AddItemPageState createState() => _AddItemPageState();
}

class _AddItemPageState extends State<AddItemPage> {
  final _saleController = Get.find<SaleController>();
  GFBottomSheetController bottomController = GFBottomSheetController();
  late Map<String?, List<ProductDataModel>> _filteredList;
  late Map<String?, List<ProductDataModel>> _temporary;
  bool keyboard = false;
  TextEditingController _item = TextEditingController();
  bool? visibility = false;
  @override
  void initState() {
    setupListData();
    super.initState();
  }

  void setupListData() {
    var _list = _saleController.getProductList;

    var _data = _list.toSet().groupListsBy((element) => element.itemSku);
    _filteredList = _data;
    _temporary = _data;
    visibility = _list.length == 0 ? false : true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomSheet: GFBottomSheet(
          animationDuration: 100,
          maxContentHeight: Get.size.height / 3,
          stickyHeaderHeight: 80,
          elevation: 5,
          stickyHeader: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(color: Colors.black45, blurRadius: 0)]),
            child: GFListTile(
              margin: EdgeInsets.zero,
              color: Colors.blue.withAlpha(100),
              titleText: 'CART',
              subTitle: Obx(() => Text(
                  "Total  ${_saleController.getCartList.length.toString()}")),
              icon: Text(
                "Slide/TAP",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          // stickyFooterHeight: 50,
          contentBody: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Obx(
                () => (_saleController.getCartList.length == 0)
                    ? Container(
                        padding: EdgeInsets.all(20),
                        alignment: Alignment.center,
                        child: Text(
                          "Keranjang Kosong",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    : ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: _saleController.getCartList.length,
                        itemBuilder: (context, index) {
                          var _list = _saleController.getCartList;
                          return Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                (index + 1).toString(),
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                              Expanded(
                                child: ProductCartItem(
                                  onDelete: () {
                                    _saleController
                                        .removeItemFromCart(_list[index]);
                                  },
                                  item: _list[index],
                                ),
                              ),
                            ],
                          );
                        },
                      ),
              )),
          controller: bottomController),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey[400]!,
                      blurRadius: 2,
                      offset: const Offset(2, 1),
                      spreadRadius: 1)
                ],
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                onFieldSubmitted: (e) {
                  var _list = _saleController.getProductList;
                  var _newFilter = _list.where((element) => element.itemName!
                      .toLowerCase()
                      .contains(e.toLowerCase()));

                  var _data = _newFilter
                      .toSet()
                      .groupListsBy((element) => element.itemSku);
                  _filteredList = _data;
                  visibility = _data.length == 0 ? false : true;
                  setState(() {});
                },
                autofocus: false,
                decoration: InputDecoration(
                    prefixIcon: IconButton(
                      onPressed: () async {
                        await onScanButton();
                      },
                      icon: Icon(
                        Icons.qr_code,
                      ),
                    ),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _item.text = "";
                            keyboard = true;
                            _filteredList = _temporary;
                          });
                        },
                        icon: Icon(Icons.close)),
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    hintText: "Cari Product",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),

              // child: TypeAheadField<ProductDataModel>(
              //   animationDuration: Duration.zero,
              //   hideKeyboard: keyboard,
              //   hideSuggestionsOnKeyboardHide: true,
              //   textFieldConfiguration: TextFieldConfiguration(
              //     controller: _item,
              //     onTap: () {
              //       setState(() {
              //         keyboard = false;
              //       });
              //     },
              //     autofocus: false,
              //     decoration: InputDecoration(
              //         prefixIcon: IconButton(
              //           onPressed: () async {
              //             await onScanButton();
              //           },
              //           icon: Icon(
              //             Icons.qr_code,
              //           ),
              //         ),
              //         suffixIcon: IconButton(
              //             onPressed: () {
              //               setState(() {
              //                 _item.text = "";
              //                 keyboard = true;
              //               });
              //             },
              //             icon: Icon(Icons.close)),
              //         contentPadding: const EdgeInsets.symmetric(
              //             horizontal: 20, vertical: 10),
              //         hintText: "Cari Product",
              //         filled: true,
              //         fillColor: Colors.white,
              //         border: OutlineInputBorder(
              //           borderSide: BorderSide.none,
              //           borderRadius: BorderRadius.circular(10),
              //         )),
              //   ),
              //   suggestionsCallback: (pattern) {
              //     return _saleController.getProductList
              //         .where((element) =>
              //             element.itemCode!.contains(pattern) ||
              //             element.itemName!
              //                 .toLowerCase()
              //                 .contains(pattern.toLowerCase()))
              //         .toList();
              //   },
              //   itemBuilder: (context, val) {
              //     return Column(
              //       mainAxisSize: MainAxisSize.min,
              //       children: [
              //         ListTile(
              //           title: Text(val.itemName.toString()),
              //         ),
              //         const Divider()
              //       ],
              //     );
              //   },
              //   onSuggestionSelected: (suggestion) {
              //     onSingleItemClicked(suggestion.itemSku!);
              //     // _saleController.setSelectedCustomer(suggestion);
              //     // Get.back(closeOverlays: true);
              //   },
              // ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _filteredList.keys.length,
                itemBuilder: (context, index) {
                  var _currentItemSku = _filteredList.keys.toList()[index];
                  var _currItem = _saleController.getProductList.firstWhere(
                      (element) => element.itemSku == _currentItemSku);
                  return ProductListItem(
                    customerTypeId:
                        _saleController.getSelectedCustomer.customerTypeId!,
                    item: _currItem,
                    onTap: () {
                      if (_filteredList[_currentItemSku]!.length == 1) {
                        onSingleItemClicked(_currentItemSku!);
                      } else {
                        onListClick(context, _currentItemSku!);
                      }
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> onScanButton() async {
    setState(() {
      keyboard = true;
    });
    try {
      await Future.delayed(Duration(milliseconds: 500));
      String code = await Get.toNamed(QrScanPage.TAG);
      setState(() {
        keyboard = false;
        _item.text = code;
      });

      //find data on list

      try {
        _saleController.getProductList
            .firstWhere((element) => element.itemCode == code);

        showDefaultSnackbar(context, message: "Data Ditambahkan");
      } catch (e) {
        showDefaultSnackbar(context, message: "Item tidak ditemukan");
      }
    } catch (e) {
      print(e);
    }
  }

  void onSingleItemClicked(String currSKU) {
    try {
      _saleController.setSelectedList(_filteredList[currSKU]!);

      _saleController.updateSelectedList(
          _saleController.getSElectedList.first, true);
      _saleController.onSaveSelectList();
      showDefaultSnackbar(context,
          message: "Item Ditambahkan", duration: Duration(milliseconds: 1500));
    } catch (e) {
      print(e);
      showDefaultSnackbar(context, message: "Item Sudah Ada");
    }
  }

  void onListClick(BuildContext context, String sku) {
    _saleController.setSelectedList(_filteredList[sku]!);

    Get.bottomSheet(
        Container(
          constraints: BoxConstraints(minHeight: Get.size.height / 2),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Text(
                      "Pilih Item",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    TextButton(
                      onPressed: () async {
                        _saleController.onSaveSelectList();
                        Get.back();
                      },
                      child: Text(
                        "SIMPAN",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
              Divider(height: 5),
              Obx(
                () => Container(
                  child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: _saleController.getSElectedList.length,
                      itemBuilder: (context, index) {
                        return CheckboxListTile(
                          value:
                              _saleController.getSElectedList[index].isChecked,
                          onChanged: (value) {
                            _saleController.updateSelectedList(
                                _saleController.getSElectedList[index], value!);
                          },
                          title: Text(
                              _saleController.getSElectedList[index].itemName!),
                        );
                      }),
                ),
              )
            ],
          ),
        ),
        backgroundColor: Colors.white,
        isScrollControlled: true);
  }
}
