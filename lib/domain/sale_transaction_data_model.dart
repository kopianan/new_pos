import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos/domain/customer_data_model.dart';
import 'package:pos/domain/location/location_data_model.dart';
import 'package:pos/domain/product_data_model.dart';

part 'sale_transaction_data_model.freezed.dart';
part 'sale_transaction_data_model.g.dart';

@freezed
class SaleTransactionDataModel with _$SaleTransactionDataModel {
  factory SaleTransactionDataModel({
    required String transactionNumber,
    required LocationDataModel selectedLocation,
    required DateTime date,
    required String total,
    required CustomerDataModel selectedCustomer,
    required List<ProductDataModel> listProduct,
  }) = _SaleTransactionDataModel;

  factory SaleTransactionDataModel.fromJson(Map<String, dynamic> json) =>
      _$SaleTransactionDataModelFromJson(json);
}
