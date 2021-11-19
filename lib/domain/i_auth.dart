import 'package:dartz/dartz.dart';
import 'package:pos/domain/customer_data_model.dart';
import 'package:pos/domain/location/location_data_model.dart';
import 'package:pos/domain/payment_term.dart';
import 'package:pos/domain/sale/payment_type.dart';

abstract class IAuth {
  Future<Either<String, List<LocationDataModel>>> getLocationsList();
  Future<Either<String, List<String>>> validateLocation();
  Future<Either<String, LocationDataModel>> authentication();
  Future<Either<String, List<PaymentTerm>>> getPaymentTerm();
  Future<Either<String, List<PaymentType>>> getPaymentType();
}
