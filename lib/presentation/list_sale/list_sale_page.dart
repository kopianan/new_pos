import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pos/application/sale/sale_controller.dart';
import 'package:pos/domain/sale_transaction_data_model.dart';
import 'package:pos/infrastructure/function/custom_date.dart';
import 'package:pos/infrastructure/storage/storage.dart';
import 'package:pos/presentation/sale/sale_page.dart';

class ListSalePage extends StatefulWidget {
  static const String TAG = '/list_sale_page';
  const ListSalePage({Key? key}) : super(key: key);

  @override
  _ListSalePageState createState() => _ListSalePageState();
}

class _ListSalePageState extends State<ListSalePage> {
  PrefStorage _box = PrefStorage();
  GetStorage _storage = GetStorage();

  List<SaleTransactionDataModel> _list = [];

  final _saleController = Get.find<SaleController>();
  @override
  void initState() {
    _list = _box.getSavedTransactionDarta();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView.builder(
            itemCount: _list.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  ListTile(
                    onTap: () {
                      //set Data frist
                      _saleController.loadDataFromStorage(_list[index]);
                      Get.toNamed(SalePage.TAG);
                    },
                    title: Text(
                      _list[index].transactionNumber,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(CustomDate.convertDate(_list[index].date)),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Tunda",
                          style: TextStyle(color: Colors.red),
                        ),
                        Text(
                          _list[index].total,
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Divider(height: 0)
                ],
              );
            }));
  }
}
