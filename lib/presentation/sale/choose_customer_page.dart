import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:get/get.dart';
import 'package:pos/application/sale/sale_controller.dart';
import 'package:pos/application/sale/sale_cubit.dart';
import 'package:pos/domain/customer_data_model.dart';
import 'package:pos/infrastructure/storage/storage.dart';
import 'package:pos/injectable.dart';

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
          textFieldConfiguration: TextFieldConfiguration(
            autofocus: true,
            onTap: () {},
            decoration: InputDecoration(
                suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {});
                    },
                    icon: Icon(Icons.close)),
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
                element.customerName!.toLowerCase().contains(pattern));
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
            Get.back(closeOverlays: true);
          },
        ),
      );
    });
  }
}