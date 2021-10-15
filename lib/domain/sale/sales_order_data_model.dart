import 'package:freezed_annotation/freezed_annotation.dart';

part 'sales_order_data_model.freezed.dart';
part 'sales_order_data_model.g.dart';

@freezed
class SalesOrderDataModel with _$SalesOrderDataModel {
  factory SalesOrderDataModel({
    @JsonKey(name: 'sales_transaction_id') String? salesTransactionId,
    @JsonKey(name: 'location_id') String? locationId,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'invoice_no') String? invoiceNo,
    @JsonKey(name: 'transaction_date') String? transactionDate,
    @JsonKey(name: 'due_date') String? dueDate,
    @JsonKey(name: 'customer_id') String? customerId,
    @JsonKey(name: 'customer_name') String? customerName,
    @JsonKey(name: 'total_qty') String? totalQty,
    @JsonKey(name: 'total_amount') String? totalAmount,
    @JsonKey(name: 'total_discount_id') String? totalDiscountId,
    @JsonKey(name: 'total_discount_pct') String? totalDiscountPct,
    @JsonKey(name: 'total_discount') String? totalDiscount,
    @JsonKey(name: 'total_tax') String? totalTax,
    @JsonKey(name: 'courier_id') String? courierId,
    @JsonKey(name: 'shipping_price') String? shippingPrice,
    @JsonKey(name: 'total_expense') String? totalExpense,
    @JsonKey(name: 'total_cost') String? totalCost,
    @JsonKey(name: 'sales_id') String? salesId,
    @JsonKey(name: 'cashier_name') String? cashierName,
    @JsonKey(name: 'remark') String? remark,
    @JsonKey(name: 'payment_type_id') String? paymentTypeId,
    @JsonKey(name: 'payment_term_id') String? paymentTermId,
    @JsonKey(name: 'print_times') String? printTimes,
    @JsonKey(name: 'paid_amount') String? paidAmount,
    @JsonKey(name: 'rounding_amount') String? roundingAmount,
    @JsonKey(name: 'payment_amount') String? paymentAmount,
    @JsonKey(name: 'change_amount') String? changeAmount,
    @JsonKey(name: 'currency_id') String? currencyId,
    @JsonKey(name: 'currency_rate') String? currencyRate,
    @JsonKey(name: 'ship_to') String? shipTo,
    @JsonKey(name: 'fob_id') String? fobId,
    @JsonKey(name: 'is_taxable') String? isTaxable,
    @JsonKey(name: 'is_inclusive_tax') String? isInclusiveTax,
    @JsonKey(name: 'payment_date') String? paymentDate,
    @JsonKey(name: 'payment_status') String? paymentStatus,
    @JsonKey(name: 'freight_account_id') String? freightAccountId,
    @JsonKey(name: 'fiscal_rate') String? fiscalRate,
    @JsonKey(name: 'source_trans_id') String? sourceTransId,
    @JsonKey(name: 'invoice_disc_acc_id') String? invoiceDiscAccId,
    @JsonKey(name: 'is_inclusive_freight') String? isInclusiveFreight,
    @JsonKey(name: 'cancel_by') String? cancelBy,
    @JsonKey(name: 'cancel_date') String? cancelDate,
    @JsonKey(name: 'is_pos_trans') String? isPosTrans,
    @JsonKey(name: 'delivery_date') String? deliveryDate,
    @JsonKey(name: 'freight_no') String? freightNo,
  }) = _SalesOrderDataModel;

  factory SalesOrderDataModel.fromJson(Map<String, dynamic> json) =>
      _$SalesOrderDataModelFromJson(json);
}
