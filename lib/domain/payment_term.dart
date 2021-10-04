import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_term.freezed.dart';
part 'payment_term.g.dart';

@freezed
class PaymentTerm with _$PaymentTerm {
  const factory PaymentTerm({
    @JsonKey(name: 'nama') String? name,
    @JsonKey(name: 'kode') String? code,
  }) = _PaymentTerm;

  factory PaymentTerm.fromJson(Map<String, dynamic> json) =>
      _$PaymentTermFromJson(json);
}
