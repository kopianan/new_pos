import 'package:dartz/dartz.dart';
import 'package:pos/domain/customer_data_model.dart';
import 'package:pos/domain/location/location_data_model.dart';

abstract class IAuth {
  Future<Either<String, List<LocationDataModel>>> getLocationsList();
  Future<Either<String, List<String>>> validateLocation();
  Future<Either<String, LocationDataModel>> authentication();
}
