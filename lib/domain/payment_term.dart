import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_term.freezed.dart';
part 'payment_term.g.dart';

@freezed
class PaymentTerm with _$PaymentTerm {
  factory PaymentTerm({
    @JsonKey(name: 'payment_term_id') String? paymentTermId,
    @JsonKey(name: 'payment_term_code') String? paymentTermCode,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'cash_payment') String? cashPayment,
  }) = _PaymentTerm;

  factory PaymentTerm.fromJson(Map<String, dynamic> json) =>
      _$PaymentTermFromJson(json);
}
