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
      {@JsonKey(name: 'nama') String? name,
      @JsonKey(name: 'kode') String? code}) {
    return _PaymentTerm(
      name: name,
      code: code,
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
  @JsonKey(name: 'nama')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'kode')
  String? get code => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'nama') String? name,
      @JsonKey(name: 'kode') String? code});
}

/// @nodoc
class _$PaymentTermCopyWithImpl<$Res> implements $PaymentTermCopyWith<$Res> {
  _$PaymentTermCopyWithImpl(this._value, this._then);

  final PaymentTerm _value;
  // ignore: unused_field
  final $Res Function(PaymentTerm) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
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
      {@JsonKey(name: 'nama') String? name,
      @JsonKey(name: 'kode') String? code});
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
    Object? name = freezed,
    Object? code = freezed,
  }) {
    return _then(_PaymentTerm(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentTerm implements _PaymentTerm {
  const _$_PaymentTerm(
      {@JsonKey(name: 'nama') this.name, @JsonKey(name: 'kode') this.code});

  factory _$_PaymentTerm.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentTermFromJson(json);

  @override
  @JsonKey(name: 'nama')
  final String? name;
  @override
  @JsonKey(name: 'kode')
  final String? code;

  @override
  String toString() {
    return 'PaymentTerm(name: $name, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PaymentTerm &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code);

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
  const factory _PaymentTerm(
      {@JsonKey(name: 'nama') String? name,
      @JsonKey(name: 'kode') String? code}) = _$_PaymentTerm;

  factory _PaymentTerm.fromJson(Map<String, dynamic> json) =
      _$_PaymentTerm.fromJson;

  @override
  @JsonKey(name: 'nama')
  String? get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'kode')
  String? get code => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PaymentTermCopyWith<_PaymentTerm> get copyWith =>
      throw _privateConstructorUsedError;
}
