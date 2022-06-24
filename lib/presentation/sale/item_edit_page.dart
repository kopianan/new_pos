import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../application/sale/sale_controller.dart';
import '../../domain/product_data_model.dart';

class ItemEditPage extends StatefulWidget {
  static const String routeName = '/item-edit';
  const ItemEditPage({Key? key}) : super(key: key);

  @override
  _ItemEditPageState createState() => _ItemEditPageState();
}

class _ItemEditPageState extends State<ItemEditPage> {
  late ProductDataModel _currentItem;
  TextEditingController _defaultPrice = TextEditingController();
  TextEditingController _newPrice = TextEditingController();
  TextEditingController _discount = TextEditingController(text: "0");
  String _defaultValue = 'percent';

  final _saleController = Get.put(SaleController());

  @override
  void initState() {
    _currentItem = Get.arguments as ProductDataModel;
    initializeData(_currentItem);
    super.initState();
  }

  void initializeData(ProductDataModel data) {
    _defaultPrice.text = NumberFormat.currency(symbol: "Rp.", decimalDigits: 0)
        .format(double.parse(data.itemPrice!));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Item"),
        backgroundColor: Colors.white,
        elevation: 4,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Item name",
              ),
              Text(
                _currentItem.itemName!,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: _defaultPrice,
                readOnly: true,
                decoration: InputDecoration(
                  label: Text("Harga Awal"),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: _newPrice,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  label: Text("Harga Baru"),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                      flex: 3,
                      child: DropdownButtonFormField<String>(
                        decoration:
                            InputDecoration(border: OutlineInputBorder()),
                        value: _defaultValue,
                        onChanged: (value) {
                          setState(() {
                            _defaultValue = value!;
                          });
                        },
                        items: [
                          DropdownMenuItem(
                            child: Text("Rp."),
                            value: 'rp',
                          ),
                          DropdownMenuItem(
                            child: Text("Percent"),
                            value: 'percent',
                          ),
                        ],
                      )),
                  SizedBox(width: 10),
                  Expanded(
                    flex: 5,
                    child: TextFormField(
                      controller: _discount,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        label: Text("Discount"),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                  width: double.infinity,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {
                      print(" New Price " + _newPrice.text);
                      var _isPercent = false;

                      if (_defaultValue == 'rp') {
                        _isPercent = false;
                      } else {
                        _isPercent = true;
                      }
                      if (double.parse(_discount.text) == 0) {
                        _isPercent = true;
                      }
                      var _updatedItem = _currentItem.copyWith(
                        itemPrice: (_newPrice.text != "")
                            ? _newPrice.text
                            : _currentItem.itemPrice,
                        itmPriceFmt: (_newPrice.text != "")
                            ? _newPrice.text
                            : _currentItem.itmPriceFmt,
                        discount: double.parse(_discount.text),
                        isPercentage: _isPercent,
                      );
                      _saleController.updateItemFromCart(_updatedItem);
                      Get.back();
                    },
                    child: Text("Simpan"),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
