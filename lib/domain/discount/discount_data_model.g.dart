// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discount_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DiscountDataModel _$$_DiscountDataModelFromJson(Map<String, dynamic> json) =>
    _$_DiscountDataModel(
      customerCode: json['customer_code'] as String?,
      customerName: json['customer_name'] as String?,
      customertypeId: json['customer_type_id'] as String?,
      eventDiscount: json['event_discount'] as String?,
      kategoriId: json['kategori_id'] as String?,
      eventEndDate: json['event_end_date'] as String?,
    );

Map<String, dynamic> _$$_DiscountDataModelToJson(
        _$_DiscountDataModel instance) =>
    <String, dynamic>{
      'customer_code': instance.customerCode,
      'customer_name': instance.customerName,
      'customer_type_id': instance.customertypeId,
      'event_discount': instance.eventDiscount,
      'kategori_id': instance.kategoriId,
      'event_end_date': instance.eventEndDate,
    };
