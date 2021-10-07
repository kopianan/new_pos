import 'package:dartz/dartz.dart';
import 'package:pos/domain/customer_data_model.dart';
import 'package:pos/domain/discount/discount_data_model.dart';
import 'package:pos/domain/product_data_model.dart';
import 'package:pos/domain/sale/request_sale_transaction_data_model.dart';

abstract class ISale {
  Future<Either<String, List<ProductDataModel>>> getAllProduct();
  Future<Either<String, List<CustomerDataModel>>> getAllCustomer();
  Future<Either<String, RequestSaleTransactionDataModel>> makeTransaction(
      RequestSaleTransactionDataModel data, dynamic sale);
  Future<Either<String, String>> confirmPayment(
      RequestSaleTransactionDataModel sale);
  Future<Either<String, List<DiscountDataModel>>> getCustomerDiscount(
      CustomerDataModel customer);
}
