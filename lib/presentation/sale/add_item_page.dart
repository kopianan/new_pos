import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:get/get.dart';
import 'package:pos/application/sale/sale_controller.dart';
import 'package:pos/domain/product_data_model.dart';
import 'package:collection/collection.dart';

import 'widget/product_list_item.dart';

class AddItemPage extends StatefulWidget {
  static const String TAG = '/add-item-page';
  const AddItemPage({Key? key}) : super(key: key);

  @override
  _AddItemPageState createState() => _AddItemPageState();
}

class _AddItemPageState extends State<AddItemPage> {
  final _saleController = Get.find<SaleController>();
  late Map<String?, List<ProductDataModel>> _filteredList;
  @override
  void initState() {
    setupListData();
    super.initState();
  }

  void setupListData() {
    var _list = _saleController.getProductList;

    var _data = _list.toSet().groupListsBy((element) => element.itemSku);
    _filteredList = _data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              var _list = _filteredList.keys.toList();
              // var _list = _saleController.getProductList;
              // print(_list.length);
              // var _data =
              //     _list.toSet().groupListsBy((element) => element.itemSku);
              // print(_data['645.22.06.90']);
              // print(_data['645.22.06.90']!.length);
            },
            icon: Icon(Icons.ten_k),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.qr_code),
      ),
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
              child: TypeAheadField<ProductDataModel>(
                hideSuggestionsOnKeyboardHide: true,
                textFieldConfiguration: TextFieldConfiguration(
                  autofocus: true,
                  onTap: () {},
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {});
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
                suggestionsCallback: (pattern) {
                  return [];
                  // return _saleController.getCustomerList.where((element) =>
                  //     element.customerName!.toLowerCase().contains(pattern));
                },
                itemBuilder: (context, val) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        title: Text(val.itemName.toString()),
                      ),
                      const Divider()
                    ],
                  );
                },
                onSuggestionSelected: (suggestion) {
                  // _saleController.setSelectedCustomer(suggestion);
                  // Get.back(closeOverlays: true);
                },
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _filteredList.keys.length,
                itemBuilder: (context, index) {
                  var _currentItemSku = _filteredList.keys.toList()[index];
                  var _currItem = _saleController.getProductList.firstWhere(
                      (element) => element.itemSku == _currentItemSku);
                  return ProductListItem(
                    item: _currItem,
                    onTap: () {
                      onListClick(context, _currentItemSku!);
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

  void onListClick(BuildContext context, String sku) {
    _saleController.setSelectedList(_filteredList[sku]!);

    Get.bottomSheet(
        Container(
          constraints: BoxConstraints(minHeight: Get.size.height / 2),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Text("Pilih Item"),
                  TextButton(
                    onPressed: () async {
                      _saleController.onSaveSelectList();
                      Get.back();
                    },
                    child: Text("Save"),
                  )
                ],
              ),
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
