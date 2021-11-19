import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_type.freezed.dart';
part 'payment_type.g.dart';

@freezed
class PaymentType with _$PaymentType {
  factory PaymentType({
    @JsonKey(name: 'payment_type_id') String? paymentTypeId,
    @JsonKey(name: 'payment_type_code') String? paymentTypeCode,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'is_credit') String? isCredit,
  }) = _PaymentType;

  factory PaymentType.fromJson(Map<String, dynamic> json) =>
      _$PaymentTypeFromJson(json);
}
