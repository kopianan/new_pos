import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:intl/intl.dart';
import 'package:pos/application/sale/sale_controller.dart';
import 'package:pos/config/constants_data.dart';
import 'package:pos/domain/product_data_model.dart';
import 'package:pos/infrastructure/storage/storage.dart';

import '../item_edit_page.dart';

class ProductCartItem extends StatefulWidget {
  ProductCartItem({
    Key? key,
    this.onDelete,
    required this.item,
  });

  final ProductDataModel item;
  final Function? onDelete;

  @override
  State<ProductCartItem> createState() => _ProductCartItemState();
}

class _ProductCartItemState extends State<ProductCartItem> {
  final _sale = Get.find<SaleController>();

  PrefStorage _box = PrefStorage();

  final _totalController = TextEditingController();

  final saleController = Get.put(SaleController());
  String? selectedUnit = null;
  String? selectedUnitCode = null;
  Map<String, dynamic> unitList = {};
  void setupUnit(ProductDataModel item) {
    if (item.unitCode == item.purchaseUnitCode) {
      unitList = {'unit_code': item.unitCode};
    } else {
      //fill the selected unit code
      if (item.unitCode == item.selectedUnit) {
        selectedUnitCode = 'unit_code';
      } else {
        selectedUnitCode = 'purch_unit_code';
      }
      unitList = {
        'unit_code': item.unitCode,
        'purch_unit_code': item.purchaseUnitCode
      };
    }

    selectedUnit = item.selectedUnit;

    setState(() {});
  }

  bool? isConversion = false;
  @override
  void initState() {
    isConversion = GetStorage().read('multiunit');
    setupUnit(widget.item);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(
          fit: StackFit.loose,
          children: [
            ListTile(
              title: InkWell(
                onTap: () {
                  if (_box.getEditable()) {
                    Get.toNamed(
                      ItemEditPage.routeName,
                      arguments: widget.item,
                    );
                  } else {
                    return null;
                  }
                },
                child: Text(
                  widget.item.itemName!,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              leading: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      if ((_sale.getSetStatus !=
                              describeEnum(TransStatus.PROCCESS) &&
                          _sale.getSetStatus !=
                              describeEnum(TransStatus.PENDING))) {
                      } else {
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
                                        controller: _totalController,
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                          label: Text("Total Beli"),
                                          hintText: calculateMax(widget.item)
                                              .toStringAsFixed(0),
                                          border: OutlineInputBorder(),
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Container(
                                        height: 45,
                                        width: double.infinity,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            onConfirmNewStock(
                                                _totalController.text,
                                                widget.item,
                                                selectedUnitCode!);
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
                      }
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 3),
                      alignment: Alignment.center,
                      width: 50,
                      color: Colors.grey[200],
                      child: Text(
                        calculateCurrentTotalQty(widget.item),
                        // widget.item.totalBuy.toString(),
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  ((_sale.getSetStatus != describeEnum(TransStatus.PROCCESS) &&
                          _sale.getSetStatus !=
                              describeEnum(TransStatus.PENDING)))
                      ? SizedBox()
                      : Visibility(
                          visible: isConversion!,
                          child: DropdownButton<String>(
                            isDense: true,
                            value: selectedUnit,
                            items: unitList.entries
                                .map((e) => DropdownMenuItem<String>(
                                    child: Text(e.value), value: e.value))
                                .toList(),
                            onChanged: (e) {
                              var _priceAfterDiscount =
                                  saleController.checkRealPrice(widget.item)!;
                              var _price = saleController.initialPrice(
                                widget.item,
                                _priceAfterDiscount,
                                e!,
                              );
                              // price
                              //change selected unit
                              saleController.updateItemFromCart(
                                widget.item.copyWith(
                                    selectedUnit: e,
                                    itemPrice: _price,
                                    totalBuy: 1),
                              );
                              setState(() {
                                selectedUnit = e;
                                selectedUnitCode = unitList.keys
                                    .firstWhere((data) => unitList[data] == e);
                                onConfirmNewStock(
                                    "1", widget.item, selectedUnitCode!);
                              });
                            },
                          ),
                        ),
                ],
              ),
              subtitle: InkWell(
                onTap: () {
                  if (_box.getEditable()) {
                    Get.toNamed(
                      ItemEditPage.routeName,
                      arguments: widget.item,
                    );
                  }
                },
                child: Row(
                  children: [
                    (_sale.getSetStatus != describeEnum(TransStatus.PROCCESS))
                        ? SizedBox()
                        : Text(calculateConversion(
                            widget.item, selectedUnitCode!)),
                    Spacer(),
                    (widget.item.pic!.isNotEmpty)
                        ? IconButton(
                            onPressed: () {
                              var _baseUrl = PrefStorage().getImageBaseUrl();
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return Dialog(
                                      insetPadding: EdgeInsets.zero,
                                      child: Container(
                                        width: double.infinity,
                                        height: Get.size.width,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  _baseUrl + widget.item.pic!),
                                              fit: BoxFit.contain),
                                        ),
                                      ),
                                    );
                                  });
                            },
                            icon: Icon(Icons.image),
                            color: Colors.grey,
                          )
                        : SizedBox(),
                    SizedBox(width: 10)
                  ],
                ),
              ),
              trailing: InkWell(
                onTap: () {
                  if (_box.getEditable()) {
                    Get.toNamed(
                      ItemEditPage.routeName,
                      arguments: widget.item,
                    );
                  }
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      NumberFormat.currency(symbol: "Rp.", decimalDigits: 0)
                          .format(
                        double.parse(widget.item.itemPrice!) *
                            widget.item.totalBuy,
                      ),
                      style: TextStyle(fontSize: 17),
                    ),
                    (widget.item.discount == null)
                        ? SizedBox()
                        : Text(
                            (widget.item.isPercentage == true)
                                ? 'Discount ${widget.item.discount!.toStringAsFixed(0)} %'
                                : 'Discount ${widget.item.discount!.toStringAsFixed(0)}',
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          )
                  ],
                ),
              ),
            ),
            (_sale.getSetStatus != describeEnum(TransStatus.PROCCESS) &&
                    _sale.getSetStatus != describeEnum(TransStatus.PENDING))
                ? SizedBox()
                : Positioned(
                    width: 80,
                    height: 20,
                    top: 0,
                    right: 0,
                    child: InkWell(
                      onTap: () {
                        widget.onDelete!();
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            topLeft: Radius.circular(10),
                          ),
                          color: Colors.red,
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "Hapus",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ),
                    ),
                  ),
          ],
        ),
        Divider(
          height: 0,
          thickness: 1,
        )
      ],
    );
  }

  String calculateConversion(ProductDataModel dataModel, String unit) {
    String _stock = '';
    if (unit == dataModel) {
      _stock =
          "${double.parse(dataModel.qty!).toStringAsFixed(0)}  ${dataModel.unitCode}";
    } else {
      var _unit = double.parse(dataModel.unitConversion!);
      var _total = double.parse(dataModel.qty!);
      var _totalUnit = _total / _unit;
      _stock =
          "${_totalUnit.toStringAsFixed(2)}  ${dataModel.purchaseUnitCode}";
    }
    return _stock;
  }

  String calculateCurrentTotalQty(ProductDataModel dataModel) {
    double _totalBuy = 0;
    if (dataModel.selectedUnit == 'unit_code') {
      _totalBuy = double.parse(dataModel.totalBuy.toString());
    } else {
      var _unit = double.parse(dataModel.unitConversion!);
      var _total = double.parse(dataModel.totalBuy.toString());
      _totalBuy = _total / _unit;
    }
    return _totalBuy.toStringAsFixed(0);
  }

  double calculateMax(ProductDataModel dataModel) {
    double _stock = 0;
    if (dataModel.selectedUnit == 'unit_code') {
      _stock = double.parse(dataModel.qty!);
    } else {
      var _unit = double.parse(dataModel.unitConversion!);
      var _total = double.parse(dataModel.qty!);
      var _totalUnit = _total / _unit;
      _stock = _totalUnit;
    }
    return _stock;
  }

  void onConfirmNewStock(
      String newQuantyty, ProductDataModel item, String selectedUnitCode) {
    var _text = double.parse(newQuantyty);
    if (_text == 0) {
      Get.showSnackbar(getSnackbar(
        "Item tidak boleh kosong",
        Colors.red,
      ));
    } else if (_text > double.parse(item.qty!)) {
      Get.showSnackbar(getSnackbar(
        "Stok tidak cukup",
        Colors.red,
      ));
    } else {
      //check the total :
      if (selectedUnitCode == 'unit_code') {
        saleController.addCustomQty(
            item, int.parse(double.parse(newQuantyty).toStringAsFixed(0)));
      } else {
        var _max = calculateMax(item);
        if (_text > _max) {
          print("Show snackboar");
          Get.showSnackbar(
            getSnackbar(
              "Stok tidak cukup",
              Colors.red,
            ),
          );
        } else {
          var _qt =
              double.parse(newQuantyty) * double.parse(item.unitConversion!);
          saleController.addCustomQty(item, int.parse(_qt.toStringAsFixed(0)));
        }
      }
    }
  }

  GetSnackBar getSnackbar(String message, Color color) {
    return GetSnackBar(
      message: message,
      backgroundColor: color,
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(10),
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: 2),
    );
  }
}
