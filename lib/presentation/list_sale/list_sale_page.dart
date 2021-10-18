import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
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
  List<SaleTransactionDataModel> _filteredList = [];

  final _saleController = Get.find<SaleController>();
  final dateCon = TextEditingController();
  @override
  void initState() {
    _list = _box.getSavedTransactionDarta();
    _filteredList = _list;

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Tanggal",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          TextFormField(
            controller: dateCon,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.date_range),
              hintText: "Pilih tanggal",
              contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              border: OutlineInputBorder(gapPadding: 0),
            ),
            readOnly: true,
            onTap: () async {
              try {
                var _date = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2022),
                );
                if (_date != null) {
                  dateCon.text = DateFormat.yMEd().format(_date);
                  //filter list
                  var _newList = _list
                      .where((element) => _date.isBefore(element.date))
                      .toList();
                  setState(() {
                    _filteredList = _newList;
                  });
                }
              } catch (e) {}
            },
          ),
          Divider(),
          Expanded(
            child: ListView.builder(
                itemCount: _filteredList.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        onTap: () async {
                          //set Data frist
                          _saleController.loadDataFromStorage(_filteredList[index]);
                          await Get.toNamed(SalePage.TAG);
                          setState(() {
                            _filteredList = _box.getSavedTransactionDarta();
                          });
                        },
                        title: Text(
                          _filteredList[index].transactionNumber,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          CustomDate.convertDate(_filteredList[index].date),
                        ),
                        trailing: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              _filteredList[index].status,
                              style: TextStyle(
                                  color: checkColor(_filteredList[index].status)),
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
                }),
          )
          // (_list.length == 0)
          //     ? Container(
          //         width: double.infinity,
          //         height: double.infinity,
          //         alignment: Alignment.center,
          //         child: Column(
          //           mainAxisAlignment: MainAxisAlignment.center,
          //           children: [
          //             Icon(
          //               Icons.list_alt_sharp,
          //               size: 100,
          //               color: Colors.grey,
          //             ),
          //             SizedBox(height: 20),
          //             Text(
          //               "Tidak Ada Data",
          //               style: TextStyle(
          //                 fontSize: 20,
          //                 color: Colors.grey,
          //                 fontWeight: FontWeight.bold,
          //               ),
          //             ),
          //           ],
          //         ),
          //       )
          //     : Expanded(
          //         child: ListView.builder(
          //             itemCount: _list.length,
          //             itemBuilder: (context, index) {
          //               return Column(
          //                 children: [
          //                   ListTile(
          //                     onTap: () async {
          //                       //set Data frist
          //                       _saleController
          //                           .loadDataFromStorage(_list[index]);
          //                       await Get.toNamed(SalePage.TAG);
          //                       setState(() {
          //                         _list = _box.getSavedTransactionDarta();
          //                       });
          //                     },
          //                     title: Text(
          //                       _list[index].transactionNumber,
          //                       style: TextStyle(fontWeight: FontWeight.bold),
          //                     ),
          //                     subtitle: Text(
          //                       CustomDate.convertDate(_list[index].date),
          //                     ),
          //                     trailing: Column(
          //                       mainAxisAlignment:
          //                           MainAxisAlignment.spaceBetween,
          //                       children: [
          //                         Text(
          //                           _list[index].status,
          //                           style: TextStyle(
          //                               color: checkColor(_list[index].status)),
          //                         ),
          //                         Text(
          //                           _list[index].total,
          //                           style: TextStyle(
          //                               fontSize: 17,
          //                               fontWeight: FontWeight.bold),
          //                         )
          //                       ],
          //                     ),
          //                   ),
          //                   Divider(height: 0)
          //                 ],
          //               );
          //             }),
          //       )
        ],
      ),
    );
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
