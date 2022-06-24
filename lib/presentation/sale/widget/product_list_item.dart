import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pos/domain/product_data_model.dart';

class ProductListItem extends StatelessWidget {
  ProductListItem(
      {Key? key,
      this.onTap,
      required this.item,
      required this.customerTypeId,
      required this.isConversion});

  final ProductDataModel item;
  final String customerTypeId;
  final Function? onTap;
  final bool isConversion;
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
                  calculateConversion(item),
                ),
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Text("Stok : ${calculateMax(item)}"),
              Text(
                _formatter.format(calculateConversionHargaCoret(item)),
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

  double calculateConversion(ProductDataModel dataModel) {
    double usePrice = 0;
    double unitConversion = 0;

    try {
      unitConversion = double.parse(dataModel.unitConversion!);
    } on Exception catch (e) {
      unitConversion = 1;
    }

    if (checkPrice(customerTypeId, item.customerTypeId)) {
      usePrice = double.parse(dataModel.newPrice!);
    } else {
      usePrice = double.parse(dataModel.itemPrice!);
    }

    if (isConversion) {
      return (usePrice * unitConversion);
    }

    return usePrice;
  }

  double calculateConversionHargaCoret(ProductDataModel dataModel) {
    double usePrice = 0;
    double unitConversion = 0;

    try {
      unitConversion = double.parse(dataModel.unitConversion!);
    } on Exception catch (e) {
      unitConversion = 1;
    }

    if (checkPrice(customerTypeId, item.customerTypeId)) {
      usePrice = double.parse(dataModel.itemPrice!);
    } else {
      usePrice = double.parse(dataModel.newPrice!);
    }

    if (isConversion) {
      return (usePrice * unitConversion);
    }

    return usePrice;
  }

  String calculateMax(ProductDataModel item) {
    double _stock = 0;
    String unit = '';
    if (!isConversion) {
      _stock = double.parse(item.qty!);
      unit = item.unitCode!;
    } else {
      var _unit = double.parse(item.unitConversion!);
      var _total = double.parse(item.qty!);
      var _totalUnit = _total / _unit;
      _stock = _totalUnit;
      unit = item.purchaseUnitCode!;
    }
    return _stock.toString() + " " + unit;
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
