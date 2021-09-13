import 'dart:convert';

import 'package:get_storage/get_storage.dart';
import 'package:pos/domain/location/location_data_model.dart';

class PrefStorage {
  final box = GetStorage();

  String get getToken => '0105';

  Future<void> setBaseUrl(String url) async {
    try {
      await box.write('baseUrl', url);
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

  Future<void> setUserLogin(LocationDataModel location) async {
    try {
      await box.write('userLoginData', location.toJson());
    } catch (e) {
      print(e);
      throw Exception(e);
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
}
