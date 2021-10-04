// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sale_transaction_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SaleTransactionDataModel _$$_SaleTransactionDataModelFromJson(
        Map<String, dynamic> json) =>
    _$_SaleTransactionDataModel(
      transactionNumber: json['transactionNumber'] as String,
      selectedLocation: LocationDataModel.fromJson(
          json['selectedLocation'] as Map<String, dynamic>),
      date: DateTime.parse(json['date'] as String),
      total: json['total'] as String,
      selectedCustomer: CustomerDataModel.fromJson(
          json['selectedCustomer'] as Map<String, dynamic>),
      paymentTerm:
          PaymentTerm.fromJson(json['paymentTerm'] as Map<String, dynamic>),
      paymentType:
          PaymentTerm.fromJson(json['paymentType'] as Map<String, dynamic>),
      listProduct: (json['listProduct'] as List<dynamic>)
          .map((e) => ProductDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SaleTransactionDataModelToJson(
        _$_SaleTransactionDataModel instance) =>
    <String, dynamic>{
      'transactionNumber': instance.transactionNumber,
      'selectedLocation': instance.selectedLocation,
      'date': instance.date.toIso8601String(),
      'total': instance.total,
      'selectedCustomer': instance.selectedCustomer,
      'paymentTerm': instance.paymentTerm,
      'paymentType': instance.paymentType,
      'listProduct': instance.listProduct,
    };
