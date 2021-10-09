import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:get/get.dart';
import 'package:pos/application/sale/sale_controller.dart';
import 'package:pos/application/sale/sale_cubit.dart';
import 'package:pos/domain/customer_data_model.dart';
import 'package:pos/infrastructure/storage/storage.dart';
import 'package:pos/injectable.dart';
import 'package:pos/presentation/scan/qr_scan_page.dart';

class ChooseCustomerPage extends StatefulWidget {
  static const String TAG = '/choose-customer-page';
  const ChooseCustomerPage({Key? key}) : super(key: key);

  @override
  _ChooseCustomerPageState createState() => _ChooseCustomerPageState();
}

class _ChooseCustomerPageState extends State<ChooseCustomerPage> {
  final _saleController = Get.find<SaleController>();
  PrefStorage _box = PrefStorage();
  List<CustomerDataModel> _listCustomer = [];
  TextEditingController _cust = TextEditingController();
  bool keyboard = false;
  FocusNode focusNode = FocusNode();
  @override
  void initState() {
    checkData();
    super.initState();
  }

  void checkData() {
    //load data from storage
    _listCustomer = _box.loadCustomerList();
    _saleController.setCustomerList(_listCustomer);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pilih Customer"),
      ),
      body: SafeArea(child: customerTextField()),
    );
  }

  Widget customerTextField() {
    return GetBuilder<SaleController>(builder: (context) {
      return Container(
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
        child: TypeAheadField<CustomerDataModel>(
          hideSuggestionsOnKeyboardHide: true,
          animationDuration: Duration.zero,
          hideKeyboard: keyboard,
          textFieldConfiguration: TextFieldConfiguration(
            controller: _cust,
            autofocus: true,
            focusNode: focusNode,
            onTap: () {},
            decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () async {
                    setState(() {
                      keyboard = true;
                    });
                    try {
                      await Future.delayed(Duration(milliseconds: 500));
                      String code = await Get.toNamed(QrScanPage.TAG);
                      setState(() {
                        keyboard = false;
                        focusNode.requestFocus();
                        _cust.text = code;
                      });
                    } catch (e) {
                      print(e);
                    }
                  },
                  icon: Icon(Icons.qr_code),
                ),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                hintText: "Cari Customer",
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10),
                )),
          ),
          suggestionsCallback: (pattern) {
            return _saleController.getCustomerList.where((element) =>
                element.customerName!.toLowerCase().contains(pattern) ||
                element.customerCode!.contains(pattern));
          },
          itemBuilder: (context, suggestion) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  title: Text(suggestion.customerName!.toString()),
                ),
                const Divider()
              ],
            );
          },
          onSuggestionSelected: (suggestion) {
            _saleController.setSelectedCustomer(suggestion);
            Get.back(closeOverlays: true, result: suggestion);
          },
        ),
      );
    });
  }
}
