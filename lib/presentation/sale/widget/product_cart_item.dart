import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
              leading: InkWell(
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
                          insetPadding: EdgeInsets.symmetric(horizontal: 20),
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
                                      hintText: double.parse(
                                              widget.item.qty.toString())
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
                                        onConfirmNewStock(_totalController.text,
                                            widget.item.qty!);
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
                child: Column(
                  children: [
                    Text(
                      widget.item.totalBuy.toString(),
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                        width: 20,
                        child: Divider(
                          thickness: 2,
                        ))
                  ],
                ),
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
                        : Text("Stok : " +
                            double.parse(widget.item.qty!).toStringAsFixed(0)),
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
                          .format(double.parse(widget.item.itemPrice!) *
                              widget.item.totalBuy),
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

  void onConfirmNewStock(String newQuantyty, String previouseQty) {
    var _text = double.parse(newQuantyty);
    if (_text == 0) {
      Get.showSnackbar(getSnackbar(
        "Item tidak boleh kosong",
        Colors.red,
      ));
    } else if (_text > double.parse(previouseQty)) {
      Get.showSnackbar(getSnackbar(
        "Stok tidak cukup",
        Colors.red,
      ));
    } else {
      saleController.addCustomQty(
          widget.item, int.parse(double.parse(newQuantyty).toStringAsFixed(0)));
      Get.back();
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
