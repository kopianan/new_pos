import 'dart:convert';

import 'package:get_storage/get_storage.dart';
import 'package:pos/domain/location/location_data_model.dart';

class PrefStorage {
  final box = GetStorage();

  String get getToken => '0105';
  LocationDataModel getBaseLocation() {
    var _json = box.read<dynamic>('baseLocation');
    return LocationDataModel.fromJson(_json);
  }

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

  Future<void> setBaseLocation(LocationDataModel location) async {
    try {
      await box.write('baseLocation', location.toJson());
    } catch (e) {
      print(e);
      throw Exception(e);
    }
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
