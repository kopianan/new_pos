import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
        appBar: AppBar(
          title: Text(
            "LIST SALE",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: (_list.length == 0)
            ? Container(
                width: double.infinity,
                height: double.infinity,
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.list_alt_sharp,
                      size: 100,
                      color: Colors.grey,
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Tidak Ada Data",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              )
            : ListView.builder(
                itemCount: _list.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        onTap: () async {
                          //set Data frist
                          _saleController.loadDataFromStorage(_list[index]);
                          await Get.toNamed(SalePage.TAG);
                          setState(() {
                            _list = _box.getSavedTransactionDarta();
                          });
                        },
                        title: Text(
                          _list[index].transactionNumber,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          CustomDate.convertDate(_list[index].date),
                        ),
                        trailing: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              _list[index].status,
                              style: TextStyle(
                                  color: checkColor(_list[index].status)),
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

  Color checkColor(String status) {
    switch (status) {
      case "CANCEL":
        return Colors.red;
      case "PENDING":
        return Colors.amber;
      case "SEND":
        return Colors.green;
      case "PROCCESS":
        return Colors.blue;
      default:
        return Colors.red;
    }
  }
}
