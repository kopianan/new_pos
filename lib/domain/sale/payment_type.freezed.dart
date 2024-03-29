// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'payment_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentType _$PaymentTypeFromJson(Map<String, dynamic> json) {
  return _PaymentType.fromJson(json);
}

/// @nodoc
class _$PaymentTypeTearOff {
  const _$PaymentTypeTearOff();

  _PaymentType call(
      {@JsonKey(name: 'payment_type_id') String? paymentTypeId,
      @JsonKey(name: 'payment_type_code') String? paymentTypeCode,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'is_credit') String? isCredit}) {
    return _PaymentType(
      paymentTypeId: paymentTypeId,
      paymentTypeCode: paymentTypeCode,
      description: description,
      isCredit: isCredit,
    );
  }

  PaymentType fromJson(Map<String, Object> json) {
    return PaymentType.fromJson(json);
  }
}

/// @nodoc
const $PaymentType = _$PaymentTypeTearOff();

/// @nodoc
mixin _$PaymentType {
  @JsonKey(name: 'payment_type_id')
  String? get paymentTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_type_code')
  String? get paymentTypeCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_credit')
  String? get isCredit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentTypeCopyWith<PaymentType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentTypeCopyWith<$Res> {
  factory $PaymentTypeCopyWith(
          PaymentType value, $Res Function(PaymentType) then) =
      _$PaymentTypeCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'payment_type_id') String? paymentTypeId,
      @JsonKey(name: 'payment_type_code') String? paymentTypeCode,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'is_credit') String? isCredit});
}

/// @nodoc
class _$PaymentTypeCopyWithImpl<$Res> implements $PaymentTypeCopyWith<$Res> {
  _$PaymentTypeCopyWithImpl(this._value, this._then);

  final PaymentType _value;
  // ignore: unused_field
  final $Res Function(PaymentType) _then;

  @override
  $Res call({
    Object? paymentTypeId = freezed,
    Object? paymentTypeCode = freezed,
    Object? description = freezed,
    Object? isCredit = freezed,
  }) {
    return _then(_value.copyWith(
      paymentTypeId: paymentTypeId == freezed
          ? _value.paymentTypeId
          : paymentTypeId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentTypeCode: paymentTypeCode == freezed
          ? _value.paymentTypeCode
          : paymentTypeCode // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isCredit: isCredit == freezed
          ? _value.isCredit
          : isCredit // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$PaymentTypeCopyWith<$Res>
    implements $PaymentTypeCopyWith<$Res> {
  factory _$PaymentTypeCopyWith(
          _PaymentType value, $Res Function(_PaymentType) then) =
      __$PaymentTypeCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'payment_type_id') String? paymentTypeId,
      @JsonKey(name: 'payment_type_code') String? paymentTypeCode,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'is_credit') String? isCredit});
}

/// @nodoc
class __$PaymentTypeCopyWithImpl<$Res> extends _$PaymentTypeCopyWithImpl<$Res>
    implements _$PaymentTypeCopyWith<$Res> {
  __$PaymentTypeCopyWithImpl(
      _PaymentType _value, $Res Function(_PaymentType) _then)
      : super(_value, (v) => _then(v as _PaymentType));

  @override
  _PaymentType get _value => super._value as _PaymentType;

  @override
  $Res call({
    Object? paymentTypeId = freezed,
    Object? paymentTypeCode = freezed,
    Object? description = freezed,
    Object? isCredit = freezed,
  }) {
    return _then(_PaymentType(
      paymentTypeId: paymentTypeId == freezed
          ? _value.paymentTypeId
          : paymentTypeId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentTypeCode: paymentTypeCode == freezed
          ? _value.paymentTypeCode
          : paymentTypeCode // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isCredit: isCredit == freezed
          ? _value.isCredit
          : isCredit // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentType implements _PaymentType {
  _$_PaymentType(
      {@JsonKey(name: 'payment_type_id') this.paymentTypeId,
      @JsonKey(name: 'payment_type_code') this.paymentTypeCode,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'is_credit') this.isCredit});

  factory _$_PaymentType.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentTypeFromJson(json);

  @override
  @JsonKey(name: 'payment_type_id')
  final String? paymentTypeId;
  @override
  @JsonKey(name: 'payment_type_code')
  final String? paymentTypeCode;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'is_credit')
  final String? isCredit;

  @override
  String toString() {
    return 'PaymentType(paymentTypeId: $paymentTypeId, paymentTypeCode: $paymentTypeCode, description: $description, isCredit: $isCredit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PaymentType &&
            (identical(other.paymentTypeId, paymentTypeId) ||
                const DeepCollectionEquality()
                    .equals(other.paymentTypeId, paymentTypeId)) &&
            (identical(other.paymentTypeCode, paymentTypeCode) ||
                const DeepCollectionEquality()
                    .equals(other.paymentTypeCode, paymentTypeCode)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.isCredit, isCredit) ||
                const DeepCollectionEquality()
                    .equals(other.isCredit, isCredit)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(paymentTypeId) ^
      const DeepCollectionEquality().hash(paymentTypeCode) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(isCredit);

  @JsonKey(ignore: true)
  @override
  _$PaymentTypeCopyWith<_PaymentType> get copyWith =>
      __$PaymentTypeCopyWithImpl<_PaymentType>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentTypeToJson(this);
  }
}

abstract class _PaymentType implements PaymentType {
  factory _PaymentType(
      {@JsonKey(name: 'payment_type_id') String? paymentTypeId,
      @JsonKey(name: 'payment_type_code') String? paymentTypeCode,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'is_credit') String? isCredit}) = _$_PaymentType;

  factory _PaymentType.fromJson(Map<String, dynamic> json) =
      _$_PaymentType.fromJson;

  @override
  @JsonKey(name: 'payment_type_id')
  String? get paymentTypeId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'payment_type_code')
  String? get paymentTypeCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'is_credit')
  String? get isCredit => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PaymentTypeCopyWith<_PaymentType> get copyWith =>
      throw _privateConstructorUsedError;
}
