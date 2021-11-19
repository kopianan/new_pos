// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaymentType _$$_PaymentTypeFromJson(Map<String, dynamic> json) =>
    _$_PaymentType(
      paymentTypeId: json['payment_type_id'] as String?,
      paymentTypeCode: json['payment_type_code'] as String?,
      description: json['description'] as String?,
      isCredit: json['is_credit'] as String?,
    );

Map<String, dynamic> _$$_PaymentTypeToJson(_$_PaymentType instance) =>
    <String, dynamic>{
      'payment_type_id': instance.paymentTypeId,
      'payment_type_code': instance.paymentTypeCode,
      'description': instance.description,
      'is_credit': instance.isCredit,
    };
