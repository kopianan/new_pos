// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_term.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaymentTerm _$$_PaymentTermFromJson(Map<String, dynamic> json) =>
    _$_PaymentTerm(
      paymentTermId: json['payment_term_id'] as String?,
      paymentTermCode: json['payment_term_code'] as String?,
      description: json['description'] as String?,
      cashPayment: json['cash_payment'] as String?,
    );

Map<String, dynamic> _$$_PaymentTermToJson(_$_PaymentTerm instance) =>
    <String, dynamic>{
      'payment_term_id': instance.paymentTermId,
      'payment_term_code': instance.paymentTermCode,
      'description': instance.description,
      'cash_payment': instance.cashPayment,
    };
