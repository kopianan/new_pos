// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CustomerDataModel _$$_CustomerDataModelFromJson(Map<String, dynamic> json) =>
    _$_CustomerDataModel(
      sId: json['_id'] as String? ?? "",
      customerId: json['customer_id'] as String? ?? "",
      customerCode: json['customer_code'] as String? ?? "",
      customerName: json['customer_name'] as String? ?? "",
      defaultLocationId: json['default_location_id'] as String? ?? "",
      phone1: json['phone1'] as String? ?? "",
      address: json['address'] as String? ?? "",
      isDefault: json['is_default'] as String? ?? "",
      code: json['code'] as String? ?? "",
      pointReward: json['point_reward'] as String? ?? "",
      defaultTypeId: json['default_type_id'] as String? ?? "",
      defaultTermId: json['default_term_id'] as String? ?? "",
      customerTypeId: json['customer_type_id'] as String?,
    );

Map<String, dynamic> _$$_CustomerDataModelToJson(
        _$_CustomerDataModel instance) =>
    <String, dynamic>{
      '_id': instance.sId,
      'customer_id': instance.customerId,
      'customer_code': instance.customerCode,
      'customer_name': instance.customerName,
      'default_location_id': instance.defaultLocationId,
      'phone1': instance.phone1,
      'address': instance.address,
      'is_default': instance.isDefault,
      'code': instance.code,
      'point_reward': instance.pointReward,
      'default_type_id': instance.defaultTypeId,
      'default_term_id': instance.defaultTermId,
      'customer_type_id': instance.customerTypeId,
    };
