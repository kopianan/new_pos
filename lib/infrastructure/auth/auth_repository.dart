import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pos/domain/i_auth.dart';
import 'package:pos/domain/location/location_data_model.dart';
import 'package:pos/domain/payment_term.dart';
import 'package:pos/domain/sale/payment_type.dart';
import 'package:pos/infrastructure/storage/storage.dart';

@LazySingleton(as: IAuth)
class AuthRepository extends IAuth {
  AuthRepository(this.dio, this.box);
  final Dio dio;
  final PrefStorage box;

  @override
  Future<Either<String, List<LocationDataModel>>> getLocationsList() async {
    Response response;
    try {
      response = await dio.get(
        box.getBaseUrl() + 'weblayer/template/api,SPGApps.vm?cmd=1',
        queryParameters: {'key': box.getToken},
      );
      print(box.getToken);
      print(response.toString());
      print(box.getBaseUrl());

      List<dynamic> _data = json.decode(response.data);

      final _listLocation =
          _data.map((e) => LocationDataModel.fromJson(e)).toList();
      return right(_listLocation);
    } on DioError catch (e) {
      return left(e.response!.data.toString());
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, List<String>>> validateLocation() async {
    Response response;
    try {
      response = await dio
          .get(box.getBaseUrl() + 'weblayer/template/api,SPGAppsLoc.vm');
      print(response.data);
      String _location = json.decode(response.data)['location'];
      List<String> _data = _location.split(',');

      return right(_data);
    } on DioError catch (e) {
      return left(e.toString());
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, LocationDataModel>> authentication() async {
    try {
      var _login = box.getUserLogin();

      return right(_login);
    } on DioError catch (e) {
      return left(e.toString());
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, List<PaymentTerm>>> getPaymentTerm() async {
    Response response;
    try {
      response = await dio
          .get(box.getBaseUrl() + 'weblayer/template/api,SPGApps.vm?cmd=6');
      List<dynamic> _data = json.decode(response.data);
      final _term = _data.map((e) => PaymentTerm.fromJson(e)).toList();
      return right(_term);
    } on DioError catch (e) {
      return left(e.toString());
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, List<PaymentType>>> getPaymentType() async {
    Response response;

    try {
      response = await dio
          .get(box.getBaseUrl() + 'weblayer/template/api,SPGApps.vm?cmd=5');
      List<dynamic> _data = json.decode(response.data);
      final _term = _data.map((e) => PaymentType.fromJson(e)).toList();
      return right(_term);
    } on DioError catch (e) {
      return left(e.toString());
    } catch (e) {
      return left(e.toString());
    }
  }
}
