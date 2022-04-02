import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../application/sale/sale_controller.dart';
import '../../../domain/product_data_model.dart';

class ChooseMultiItem extends StatefulWidget {
  const ChooseMultiItem(
      {Key? key, required this.filteredList, required this.sku})
      : super(key: key);
  final Map<String?, List<ProductDataModel>> filteredList;
  final String sku;

  @override
  State<ChooseMultiItem> createState() => _ChooseMultiItemState();
}

class _ChooseMultiItemState extends State<ChooseMultiItem> {
  final _saleController = Get.find<SaleController>();

  @override
  void initState() {
    _saleController.setSelectedList(widget.filteredList[widget.sku]!);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
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
                      style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    TextButton(
                      onPressed: () async {
                        _saleController.onSaveSelectList();
                        Get.back();
                      },
                      child: Text(
                        "SIMPAN",
                        style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
              Divider(height: 5),
              Obx(
                () => Expanded(
                  child: ListView.builder( 
                    shrinkWrap: true,
                    itemCount: _saleController.getSElectedList.length,
                    itemBuilder: (context, index) {
                      return CheckboxListTile(
                        value: _saleController.getSElectedList[index].isChecked,
                        onChanged: (value) {
                          _saleController.updateSelectedList(
                              _saleController.getSElectedList[index], value!);
                        },
                        title:
                            Text(_saleController.getSElectedList[index].itemName!),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
