import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pos/domain/customer_data_model.dart';
import 'package:pos/domain/discount/discount_data_model.dart';
import 'package:pos/domain/product_data_model.dart';
import 'package:pos/domain/sale/i_sale.dart';
import 'package:pos/infrastructure/storage/storage.dart';

@LazySingleton(as: ISale)
class SaleRepository extends ISale {
  SaleRepository(this.dio, this.box);
  final Dio dio;
  final PrefStorage box;

  @override
  Future<Either<String, List<ProductDataModel>>> getAllProduct() async {
    Response response;

    try {
      var _location = box.getUserLogin().locationCode;

      response = await dio.get(
        box.getBaseUrl() +
            'weblayer/template/api,SPGApps.vm?cmd=2&loccode=$_location',
        queryParameters: {'key': box.getToken},
      );

      List<dynamic> _data = json.decode(response.data);

      final _listProduct =
          _data.map((e) => ProductDataModel.fromJson(e)).toList();
      await box.saveProductList(_listProduct);
      return right(_listProduct);
    } on DioError catch (e) {
      return left(e.toString());
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, List<CustomerDataModel>>> getAllCustomer() async {
    Response response;

    try {
      response = await dio.get(
        box.getBaseUrl() + 'weblayer/template/api,SPGApps.vm?cmd=3',
        queryParameters: {'key': box.getToken},
      );

      List<dynamic> _data = json.decode(response.data);

      final _listProduct =
          _data.map((e) => CustomerDataModel.fromJson(e)).toList();
      await box.saveCustomerList(_listProduct);
      return right(_listProduct);
    } on DioError catch (e) {
      return left(e.toString());
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, List<DiscountDataModel>>> getCustomerDiscount(
      CustomerDataModel customer) async {
    Response response;

    try {
      response = await dio.get(box.getBaseUrl() +
          'weblayer/template/api,SPGDiscount.vm?custcode=${customer.code}');

      List<dynamic> _data = json.decode(response.data);

      final _listProduct =
          _data.map((e) => DiscountDataModel.fromJson(e)).toList();

      return right(_listProduct);
    } on DioError catch (e) {
      return left(e.toString());
    } catch (e) {
      return left(e.toString());
    }
  }
}
