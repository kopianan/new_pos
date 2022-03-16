import 'dart:convert';
import 'package:get_storage/get_storage.dart';
import 'package:pos/domain/customer_data_model.dart';
import 'package:pos/domain/location/location_data_model.dart';
import 'package:pos/domain/payment_term.dart';
import 'package:pos/domain/product_data_model.dart';
import 'package:pos/domain/sale/payment_type.dart';
import 'package:pos/domain/sale_transaction_data_model.dart';

class PrefStorage {
  final box = GetStorage();

  String get getToken => '0105';

  Future<void> savePaymentTerm(List<PaymentTerm> list) async {
    try {
      var _list = list.map((e) => json.decode(json.encode(e))).toList();
      await box.write('payment-term-list', _list);
    } catch (e) {
      throw Exception();
    }
  }

  Future<void> savePaymentType(List<PaymentType> list) async {
    try {
      var _list = list.map((e) => json.decode(json.encode(e))).toList();
      await box.write('payment-type-list', _list);
    } catch (e) {
      throw Exception();
    }
  }

  List<PaymentTerm> loadPaymentTerm() {
    try {
      List _data = box.read('payment-term-list');
      var _listData = _data.map((e) => PaymentTerm.fromJson(e)).toList();
      return _listData;
    } catch (e) {
      return <PaymentTerm>[];
    }
  }

  List<PaymentType> loadPaymentType() {
    try {
      List _data = box.read('payment-type-list');
      var _listData = _data.map((e) => PaymentType.fromJson(e)).toList();
      return _listData;
    } catch (e) {
      return <PaymentType>[];
    }
  }

  Future<void> saveProductList(List<ProductDataModel> list) async {
    try {
      List<Map<String, dynamic>> _list = list.map((e) => e.toJson()).toList();
      await box.write('product-list', _list);
    } catch (e) {
      throw Exception();
    }
  }

  List<ProductDataModel> loadProductList() {
    try {
      List<Map<String, dynamic>> _data = box.read('product-list');
      var _listData = _data
          .map((e) => ProductDataModel.fromJson(json.decode(json.encode(e))))
          .toList();
      return _listData;
    } catch (e) {
      return <ProductDataModel>[];
    }
  }

  Future<void> saveCustomerList(List<CustomerDataModel> list) async {
    try {
      List<Map<String, dynamic>> _list = list.map((e) => e.toJson()).toList();
      await box.write('customer-list', _list);
    } catch (e) {
      throw Exception();
    }
  }

  List<CustomerDataModel> loadCustomerList() {
    try {
      List<Map<String, dynamic>> _data = box.read('customer-list');
      var _listData = _data
          .map((e) => CustomerDataModel.fromJson(json.decode(json.encode(e))))
          .toList();
      return _listData;
    } catch (e) {
      return <CustomerDataModel>[];
    }
  }

  Future<void> setBaseUrl(String url) async {
    try {
      await box.write('baseUrl', url);
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<void> setImageBaseUrl(String url) async {
    try {
      await box.write('iamge-base-url', url);
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<void> setTransactionType(String trans) async {
    try {
      await box.write('transactionType', trans);
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<void> setEditable(bool editable) async {
    try {
      await box.write('editable', editable);
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<void> saveStoreName(String store) async {
    try {
      await box.write('store-name', store);
    } catch (e) {
      throw Exception(e);
    }
  }

  String getStoreName() {
    try {
      final _store = box.read('store-name');
      return _store;
    } catch (e) {
      throw Exception(e);
    }
  }

  String getImageBaseUrl() {
    try {
      final _store = box.read('iamge-base-url');
      return _store;
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<void> setSelectedLocation(String locationCode) async {
    try {
      await box.write('selectedLocation', locationCode);
    } catch (e) {
      print(e);
      throw Exception(e);
    }
  }

  String getSelectedLocation() {
    try {
      final _url = box.read('selectedLocation');
      return _url;
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<void> setUserLogin(LocationDataModel location) async {
    try {
      await box.write('userLoginData', location.toJson());
    } catch (e) {
      print(e);
      throw Exception(e);
    }
  }

  Future<void> removeUserLogin() async {
    try {
      await box.remove('userLoginData');
    } catch (e) {}
  }

  Future<void> resetData() async {
    try {
      await box.erase();
    } catch (e) {}
  }

  // Future<void> removeRecordFromStorage(String transNumber) async {
  //   try {
  //     List<Map<String, dynamic>> _data = box.read('list_transaction');
  //     var _listData = _data
  //         .map((e) =>
  //             SaleTransactionDataModel.fromJson(json.decode(json.encode(e))))
  //         .toList();
  //     _listData
  //         .removeWhere((element) => element.transactionNumber == transNumber);

  //     await saveTransactionData(_listData);
  //   } catch (e) {
  //     throw (Exception(e.toString()));
  //   }
  // }

  Future<void> saveTransactionData(
      List<SaleTransactionDataModel> transList) async {
    try {
      var list = transList
          .map((element) => json.decode(json.encode(element)))
          .toList();

      await box.write('list_transaction', list);
    } catch (e) {
      throw Exception(e);
    }
  }

  List<SaleTransactionDataModel> getSavedTransactionDarta() {
    try {
      List _data = box.read('list_transaction');
      print(_data);
      var _listData =
          _data.map((e) => SaleTransactionDataModel.fromJson(e)).toList();
      return _listData;
    } catch (e) {
      print(e);
      return <SaleTransactionDataModel>[];
    }
  }

  LocationDataModel getUserLogin() {
    var _json = box.read<dynamic>('userLoginData');
    return LocationDataModel.fromJson(_json);
  }

  String getBaseUrl() {
    try {
      final _url = box.read('baseUrl');
      return _url;
    } catch (e) {
      throw Exception(e);
    }
  }

  String getTransactionType() {
    try {
      final _url = box.read('transactionType');
      return _url;
    } catch (e) {
      throw Exception(e);
    }
  }

  bool getEditable() {
    try {
      final _editable = box.read('editable');
      return _editable;
    } catch (e) {
      throw Exception(e);
    }
  }
}
