import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pos/domain/product_data_model.dart';

class ProductListItem extends StatelessWidget {
  ProductListItem(
      {Key? key, this.onTap, required this.item, required this.customerTypeId});

  final ProductDataModel item;
  final String customerTypeId;
  final Function? onTap;
  final _formatter =
      NumberFormat.currency(locale: "id_ID", symbol: "Rp ", decimalDigits: 0);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          onTap: () {
            onTap!();
          },
          title: Text(
            item.itemName!,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(item.itemCode!),
          trailing: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                _formatter.format(
                  double.parse((checkPrice(customerTypeId, item.customerTypeId))
                      ? item.newPrice!
                      : item.itemPrice!),
                ),
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Text("Stok : " + double.parse(item.qty!).toStringAsFixed(0)),
              Text(
                _formatter.format(double.parse(
                    (checkPrice(customerTypeId, item.customerTypeId))
                        ? item.itemPrice!
                        : item.newPrice!)),
                style: TextStyle(
                  fontSize: 12,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
            ],
          ),
        ),
        Divider(
          height: 0,
          thickness: 1,
        )
      ],
    );
  }

  bool checkPrice(String? cTypeId, String? iTypeId) {
    if (cTypeId == null || cTypeId.isEmpty || cTypeId != iTypeId) {
      return false;
    }
    if (cTypeId == iTypeId) {
      return true;
    }
    return false;
  }
}
