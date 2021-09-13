// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'transaction_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransactionDataModel _$TransactionDataModelFromJson(Map<String, dynamic> json) {
  return _TransactionDataModel.fromJson(json);
}

/// @nodoc
class _$TransactionDataModelTearOff {
  const _$TransactionDataModelTearOff();

  _TransactionDataModel call() {
    return _TransactionDataModel();
  }

  TransactionDataModel fromJson(Map<String, Object> json) {
    return TransactionDataModel.fromJson(json);
  }
}

/// @nodoc
const $TransactionDataModel = _$TransactionDataModelTearOff();

/// @nodoc
mixin _$TransactionDataModel {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionDataModelCopyWith<$Res> {
  factory $TransactionDataModelCopyWith(TransactionDataModel value,
          $Res Function(TransactionDataModel) then) =
      _$TransactionDataModelCopyWithImpl<$Res>;
}

/// @nodoc
class _$TransactionDataModelCopyWithImpl<$Res>
    implements $TransactionDataModelCopyWith<$Res> {
  _$TransactionDataModelCopyWithImpl(this._value, this._then);

  final TransactionDataModel _value;
  // ignore: unused_field
  final $Res Function(TransactionDataModel) _then;
}

/// @nodoc
abstract class _$TransactionDataModelCopyWith<$Res> {
  factory _$TransactionDataModelCopyWith(_TransactionDataModel value,
          $Res Function(_TransactionDataModel) then) =
      __$TransactionDataModelCopyWithImpl<$Res>;
}

/// @nodoc
class __$TransactionDataModelCopyWithImpl<$Res>
    extends _$TransactionDataModelCopyWithImpl<$Res>
    implements _$TransactionDataModelCopyWith<$Res> {
  __$TransactionDataModelCopyWithImpl(
      _TransactionDataModel _value, $Res Function(_TransactionDataModel) _then)
      : super(_value, (v) => _then(v as _TransactionDataModel));

  @override
  _TransactionDataModel get _value => super._value as _TransactionDataModel;
}

/// @nodoc
@JsonSerializable()
class _$_TransactionDataModel implements _TransactionDataModel {
  _$_TransactionDataModel();

  factory _$_TransactionDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionDataModelFromJson(json);

  @override
  String toString() {
    return 'TransactionDataModel()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _TransactionDataModel);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionDataModelToJson(this);
  }
}

abstract class _TransactionDataModel implements TransactionDataModel {
  factory _TransactionDataModel() = _$_TransactionDataModel;

  factory _TransactionDataModel.fromJson(Map<String, dynamic> json) =
      _$_TransactionDataModel.fromJson;
}
