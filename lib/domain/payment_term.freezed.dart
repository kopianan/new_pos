// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'payment_term.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentTerm _$PaymentTermFromJson(Map<String, dynamic> json) {
  return _PaymentTerm.fromJson(json);
}

/// @nodoc
class _$PaymentTermTearOff {
  const _$PaymentTermTearOff();

  _PaymentTerm call(
      {@JsonKey(name: 'payment_term_id') String? paymentTermId,
      @JsonKey(name: 'payment_term_code') String? paymentTermCode,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'cash_payment') String? cashPayment}) {
    return _PaymentTerm(
      paymentTermId: paymentTermId,
      paymentTermCode: paymentTermCode,
      description: description,
      cashPayment: cashPayment,
    );
  }

  PaymentTerm fromJson(Map<String, Object> json) {
    return PaymentTerm.fromJson(json);
  }
}

/// @nodoc
const $PaymentTerm = _$PaymentTermTearOff();

/// @nodoc
mixin _$PaymentTerm {
  @JsonKey(name: 'payment_term_id')
  String? get paymentTermId => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_term_code')
  String? get paymentTermCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'cash_payment')
  String? get cashPayment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentTermCopyWith<PaymentTerm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentTermCopyWith<$Res> {
  factory $PaymentTermCopyWith(
          PaymentTerm value, $Res Function(PaymentTerm) then) =
      _$PaymentTermCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'payment_term_id') String? paymentTermId,
      @JsonKey(name: 'payment_term_code') String? paymentTermCode,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'cash_payment') String? cashPayment});
}

/// @nodoc
class _$PaymentTermCopyWithImpl<$Res> implements $PaymentTermCopyWith<$Res> {
  _$PaymentTermCopyWithImpl(this._value, this._then);

  final PaymentTerm _value;
  // ignore: unused_field
  final $Res Function(PaymentTerm) _then;

  @override
  $Res call({
    Object? paymentTermId = freezed,
    Object? paymentTermCode = freezed,
    Object? description = freezed,
    Object? cashPayment = freezed,
  }) {
    return _then(_value.copyWith(
      paymentTermId: paymentTermId == freezed
          ? _value.paymentTermId
          : paymentTermId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentTermCode: paymentTermCode == freezed
          ? _value.paymentTermCode
          : paymentTermCode // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      cashPayment: cashPayment == freezed
          ? _value.cashPayment
          : cashPayment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$PaymentTermCopyWith<$Res>
    implements $PaymentTermCopyWith<$Res> {
  factory _$PaymentTermCopyWith(
          _PaymentTerm value, $Res Function(_PaymentTerm) then) =
      __$PaymentTermCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'payment_term_id') String? paymentTermId,
      @JsonKey(name: 'payment_term_code') String? paymentTermCode,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'cash_payment') String? cashPayment});
}

/// @nodoc
class __$PaymentTermCopyWithImpl<$Res> extends _$PaymentTermCopyWithImpl<$Res>
    implements _$PaymentTermCopyWith<$Res> {
  __$PaymentTermCopyWithImpl(
      _PaymentTerm _value, $Res Function(_PaymentTerm) _then)
      : super(_value, (v) => _then(v as _PaymentTerm));

  @override
  _PaymentTerm get _value => super._value as _PaymentTerm;

  @override
  $Res call({
    Object? paymentTermId = freezed,
    Object? paymentTermCode = freezed,
    Object? description = freezed,
    Object? cashPayment = freezed,
  }) {
    return _then(_PaymentTerm(
      paymentTermId: paymentTermId == freezed
          ? _value.paymentTermId
          : paymentTermId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentTermCode: paymentTermCode == freezed
          ? _value.paymentTermCode
          : paymentTermCode // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      cashPayment: cashPayment == freezed
          ? _value.cashPayment
          : cashPayment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentTerm implements _PaymentTerm {
  _$_PaymentTerm(
      {@JsonKey(name: 'payment_term_id') this.paymentTermId,
      @JsonKey(name: 'payment_term_code') this.paymentTermCode,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'cash_payment') this.cashPayment});

  factory _$_PaymentTerm.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentTermFromJson(json);

  @override
  @JsonKey(name: 'payment_term_id')
  final String? paymentTermId;
  @override
  @JsonKey(name: 'payment_term_code')
  final String? paymentTermCode;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'cash_payment')
  final String? cashPayment;

  @override
  String toString() {
    return 'PaymentTerm(paymentTermId: $paymentTermId, paymentTermCode: $paymentTermCode, description: $description, cashPayment: $cashPayment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PaymentTerm &&
            (identical(other.paymentTermId, paymentTermId) ||
                const DeepCollectionEquality()
                    .equals(other.paymentTermId, paymentTermId)) &&
            (identical(other.paymentTermCode, paymentTermCode) ||
                const DeepCollectionEquality()
                    .equals(other.paymentTermCode, paymentTermCode)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.cashPayment, cashPayment) ||
                const DeepCollectionEquality()
                    .equals(other.cashPayment, cashPayment)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(paymentTermId) ^
      const DeepCollectionEquality().hash(paymentTermCode) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(cashPayment);

  @JsonKey(ignore: true)
  @override
  _$PaymentTermCopyWith<_PaymentTerm> get copyWith =>
      __$PaymentTermCopyWithImpl<_PaymentTerm>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentTermToJson(this);
  }
}

abstract class _PaymentTerm implements PaymentTerm {
  factory _PaymentTerm(
      {@JsonKey(name: 'payment_term_id') String? paymentTermId,
      @JsonKey(name: 'payment_term_code') String? paymentTermCode,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'cash_payment') String? cashPayment}) = _$_PaymentTerm;

  factory _PaymentTerm.fromJson(Map<String, dynamic> json) =
      _$_PaymentTerm.fromJson;

  @override
  @JsonKey(name: 'payment_term_id')
  String? get paymentTermId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'payment_term_code')
  String? get paymentTermCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'cash_payment')
  String? get cashPayment => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PaymentTermCopyWith<_PaymentTerm> get copyWith =>
      throw _privateConstructorUsedError;
}
