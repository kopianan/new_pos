// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_sale_transaction_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RequestSaleTransactionDataModel _$$_RequestSaleTransactionDataModelFromJson(
        Map<String, dynamic> json) =>
    _$_RequestSaleTransactionDataModel(
      transNo: json['trans_no'] as String?,
      transType: json['trans_type'] as String?,
      location: json['location'] as String?,
      transDt: json['trans_dt'] as String?,
      customer: json['customer'] as String?,
      createBy: json['create_by'] as String?,
      remark: json['remark'] as String?,
      pmttype: json['pmttype'] as String?,
      pmtterm: json['pmtterm'] as String?,
      details: (json['details'] as List<dynamic>?)
          ?.map((e) => ItemDetailDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RequestSaleTransactionDataModelToJson(
        _$_RequestSaleTransactionDataModel instance) =>
    <String, dynamic>{
      'trans_no': instance.transNo,
      'trans_type': instance.transType,
      'location': instance.location,
      'trans_dt': instance.transDt,
      'customer': instance.customer,
      'create_by': instance.createBy,
      'remark': instance.remark,
      'pmttype': instance.pmttype,
      'pmtterm': instance.pmtterm,
      'details': instance.details,
    };
